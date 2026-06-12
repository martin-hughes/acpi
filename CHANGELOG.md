# Version History

## 0.0.2

Makes WrappedObject genuinely Send + Sync by replacing `UnsafeCell` with a read-writer lock.

### Breaking changes:

See `WrappedObject` for details.

* You can no longer deref a `WrappedObject`. Use `read()` instead.
* There is no need to obtain an `InterpreterToken` to write to a `WrappedObject` - use `write()`
* Be aware that it will now be possible to induce a panic if you don't treat `WrappedObject` as
  though it is an RwLock protected object.

---

## 0.0.1

First published version. This is identical to [`acpi`](https://github.com/rust-osdev/acpi) commit
[`86f4561`](https://github.com/rust-osdev/acpi/commit/86f45612f7400f8c202c48c66c1628bae7bf7f52)
