# Agent Guide for mh-acpi

## Project overview

A forked, pure-Rust no_std ACPI/AML interpreter. The core is in `src/aml/`:
- `mod.rs` — the interpreter VM (~3000 lines); owns `Interpreter<H>`
- `object.rs` — `Object` enum and `WrappedObject` wrapper
- `namespace.rs` — AML namespace tree
- `pci_routing.rs` / `resource.rs` — higher-level AML utilities
- `op_region.rs` — operation region support

Tools live under `tools/` (test harnesses, uACPI adapter). `acpi_dumper` is Linux-only and will always fail to compile on Windows — ignore that error.

## Build & test commands

```bash
cargo build                       # main crate only
cargo build --workspace           # all crates (acpi_dumper fails on Windows — expected)
cargo test                        # runs all unit + integration tests
cargo test --workspace            # includes tool crates
cargo run_tests -p tests          # test additional ASL scripts
```

All tests should pass (except the acpi_dumper platform error).

## Key type: `WrappedObject`

`WrappedObject` is an `Arc<RwSpinlock<Object>>`. It is the shared, heap-allocated handle used throughout the interpreter. Key API:

```rust
wrapped.read()   -> RwSpinlockReadGuard<'_, Object>   // shared read
wrapped.write()  -> RwSpinlockWriteGuard<'_, Object>  // exclusive write
wrapped.clone()  -> WrappedObject                      // cheap Arc clone
```

There is **no `Deref` impl**. All access to the inner `Object` must go through a guard:

```rust
// Reading a field
let read = wrapped.read();
match &*read { Object::Integer(v) => ... }

// Extracting a Copy value and releasing lock immediately
let n: u64 = wrapped.read().as_integer()?;   // guard dropped at semicolon

// Mutating
*wrapped.write() = Object::Integer(42);
wrapped.write().replace_with_implicit_casting(new_val)?;
```

**Deadlock rule**: never hold a write guard on object A while acquiring any guard on A again. Holding a read guard on A while acquiring a read guard on A is also re-entrant and will deadlock with `spinning_top::RwSpinlock`. Always:
1. Extract whatever data you need (clone `WrappedObject`s, copy `u64`s, etc.)
2. Drop the guard (`drop(guard)` or let it go out of scope)
3. Acquire the next guard

## Common patterns

### Matching on an inner object

```rust
// Cheap Copy return value — guard is temporary
let val = wrapped.read().as_integer()?;

// Borrow — keep guard alive
let read = wrapped.read();
if let Object::Buffer(bytes) = &*read {
    process(bytes);   // bytes lifetime tied to `read`
}

// Need owned data before doing further locking
let buf = wrapped.read().as_buffer()?.to_vec();
```

### Mutation

```rust
// Overwrite entirely
*target.write() = source.read().clone();

// Partial mutation (e.g. increment)
let mut w = wrapped.write();
if let Object::Integer(v) = &mut *w { *v += 1; }
```

### Dispatching on method type

```rust
let read = method.read();
if let Object::Method { .. } = &*read {
    drop(read);
    // set up context, call do_execute_method
} else if let Object::NativeMethod { f, .. } = &*read {
    let f = f.clone();   // clone Arc cheaply before dropping guard
    drop(read);
    let result = f(&args)?;
}
```

### Reference unwrapping

`WrappedObject::unwrap_reference()` and `unwrap_transparent_reference()` are safe and lock-free per iteration (they acquire a read lock, clone the inner `WrappedObject`, and release before the next iteration).

## Object::write_buffer_field

Signature changed (no longer takes `ObjectToken`):
```rust
pub fn write_buffer_field(&mut self, value: &[u8]) -> Result<(), AmlError>
```
Acquires `buffer.write()` internally. Call via a write guard on the outer `BufferField` object.

## Locking discipline in do_store / do_copy_object

These functions follow the pattern:
1. Read-lock `target` to extract `kind` and `inner.clone()` — then drop the lock
2. Work with the cloned inner objects independently
3. Acquire write lock on the destination only when ready to write

Do not restructure these back to holding `target`'s lock while writing to `inner`.

## Dependencies

- `spinning_top = "0.3.0"` — provides `Spinlock`, `RwSpinlock`, and guard types
  - Import guards as: `use spinning_top::{RwSpinlock, guard::{RwSpinlockReadGuard, RwSpinlockWriteGuard}};`
- no_std — no `std::sync::RwLock`; use `spinning_top::RwSpinlock`
- `bit_field`, `bitflags`, `log`, `pci_types`, `byteorder`

## NativeMethod bounds

`type NativeMethod = dyn Fn(&[WrappedObject]) -> Result<WrappedObject, AmlError> + Send + Sync;`

Any closure passed to `Object::native_method(num_args, f)` must be `Send + Sync + 'static`.

## Interpreter struct

```rust
pub struct Interpreter<H: Handler> {
    handler: H,
    pub namespace: Spinlock<Namespace>,
    integer_size: IntegerSize,
    region_handlers: Spinlock<BTreeMap<RegionSpace, Box<dyn RegionHandler>>>,
    global_lock_mutex: Handle,
    registers: Arc<FixedRegisters<H>>,
    facs: Option<PhysicalMapping<H, Facs>>,
}
unsafe impl<H: Handler + Send> Send for Interpreter<H> {}
unsafe impl<H: Handler + Send> Sync for Interpreter<H> {}
```

The `unsafe impl`s are intentional — `H` is not required to be `Sync` for `Interpreter` to be `Sync` because all `H` access is internally serialised.

## Scope of WrappedObject changes

When modifying `WrappedObject`'s API (e.g. adding/removing methods or changing the inner type), expect to touch:
- `src/aml/object.rs` — definition + Object methods
- `src/aml/mod.rs` — ~3000 line interpreter; very many call sites
- `src/aml/namespace.rs` — display code
- `src/aml/pci_routing.rs` — PRT decoding
- `src/aml/resource.rs` — resource descriptor parsing
- `tools/aml_test_tools/src/lib.rs` — test result comparison

Use the agent tool for large-scale systematic changes across `mod.rs` once the pattern is clear; attempting manual edits at every call site one-by-one is extremely slow.
