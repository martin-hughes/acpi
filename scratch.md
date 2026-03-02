In **ACPI (Advanced Configuration and Power Interface)**, an **IndexField** is an AML (ACPI Machine Language) construct used to access hardware registers **indirectly through an index/data register pair** instead of directly mapping to a fixed address.

It is defined in ACPI ASL (ACPI Source Language) using the `IndexField` keyword.

---

## 🔹 Why IndexField Exists

Some hardware devices don’t expose multiple registers at different memory or I/O addresses.
Instead, they use:

* **Index Register** → You write the register number you want
* **Data Register** → You read/write the value of that register

This pattern is common in:

* Embedded controllers
* Super I/O chips
* Certain chipset configuration registers

`IndexField` lets ACPI treat those indirect registers as normal fields.

---

## 🔹 Conceptual Example

Imagine hardware like this:

| Address | Purpose        |
| ------- | -------------- |
| 0x10    | Index Register |
| 0x11    | Data Register  |

To read register `5`, the system must:

1. Write `5` to `0x10`
2. Read the value from `0x11`

`IndexField` automates this process inside ACPI.

---

## 🔹 ASL Syntax Example

```asl
OperationRegion (REGS, SystemIO, 0x10, 0x02)
Field (REGS, ByteAcc, NoLock, Preserve)
{
    IDX, 8,   // Index register
    DAT, 8    // Data register
}

IndexField (IDX, DAT, ByteAcc, NoLock, Preserve)
{
    REG0, 8,
    REG1, 8,
    REG2, 8
}
```

### What happens here:

* `IDX` → index register
* `DAT` → data register
* `REG0`, `REG1`, `REG2` → logical fields

When ACPI accesses `REG1`:

1. It writes `1` to `IDX`
2. It reads/writes through `DAT`

All of that is handled automatically by AML.

---

## 🔹 How It Differs from Field

| Feature     | Field                           | IndexField                            |
| ----------- | ------------------------------- | ------------------------------------- |
| Access type | Direct address mapping          | Indirect via index/data registers     |
| Used when   | Registers are memory/I/O mapped | Registers selected via index register |
| Common in   | RAM, MMIO, PCI config space     | Embedded controllers, Super I/O       |

---

## 🔹 Where It’s Defined

`IndexField` is part of the ACPI specification maintained by the UEFI Forum.

It is used in AML tables such as:

* DSDT
* SSDT

These tables are interpreted by the OS ACPI subsystem.

---

## 🔹 In Simple Terms

An **IndexField** in ACPI is:

> A way to describe hardware registers that are accessed by first selecting a register number (index) and then reading or writing its value through a shared data port.

It allows firmware to abstract indirect hardware access so the OS can treat the registers like normal fields.

---

If you'd like, I can also explain:

* How this is implemented internally in AML opcodes
* How Linux interprets IndexField in ACPICA
* Or how this differs from BankField


Great question — this is the subtle but important part of how **IndexField** really works.

The value written to `IDX` is **not the byte offset from the start of the IndexField structure**.

It is:

> The field’s position expressed in units of the access width (ByteAcc, WordAcc, DWordAcc, etc.) starting from zero.

---

## 🔹 How the Index Value Is Determined

When you declare:

```asl
IndexField (IDX, DAT, ByteAcc, NoLock, Preserve)
{
    REG0, 8,
    REG1, 8,
    REG2, 8
}
```

You specified:

```
ByteAcc
```

That means:

* Each access unit = **1 byte**
* Index values increment by 1 per 8 bits

So the internal numbering becomes:

| Field | Bit Offset | Access Unit | Index Written to IDX |
| ----- | ---------- | ----------- | -------------------- |
| REG0  | 0          | 1 byte      | 0                    |
| REG1  | 8          | 1 byte      | 1                    |
| REG2  | 16         | 1 byte      | 2                    |

---

## 🔹 So What Do You Write to Access REG2?

To access `REG2`, AML writes:

```
2
```

to the index register (`IDX`).

Then it performs the read/write through `DAT`.

---

## 🔹 What If Access Width Changes?

This is where it gets interesting.

If instead you had:

```asl
IndexField (IDX, DAT, WordAcc, NoLock, Preserve)
{
    REG0, 16,
    REG1, 16,
    REG2, 16
}
```

Now:

* Access unit = **2 bytes**
* Index increments in 16-bit units

So:

| Field | Bit Offset | Access Unit | Index Written |
| ----- | ---------- | ----------- | ------------- |
| REG0  | 0          | 2 bytes     | 0             |
| REG1  | 16         | 2 bytes     | 1             |
| REG2  | 32         | 2 bytes     | 2             |

Still `2` for REG2 — but now each step represents 2 bytes instead of 1.

---

## 🔹 Important: It Is NOT a Raw Byte Offset

If it were raw byte offsets:

* REG2 would be at byte offset 2 (in the ByteAcc example)
* That happens to match the index here — but only because access width is 1 byte.

The rule is actually:

```
Index = (Field bit offset) / (Access width in bits)
```

So it is based on **logical access units**, not raw memory layout.

---

## 🔹 What If Fields Aren’t Uniform?

Example:

```asl
IndexField (IDX, DAT, ByteAcc, NoLock, Preserve)
{
    REG0, 8,
    REG1, 16,
    REG2, 8
}
```

Bit layout:

* REG0 → bits 0–7 → index 0
* REG1 → bits 8–23 → spans index 1 and 2
* REG2 → bits 24–31 → index 3

So:

To access REG2 → AML writes `3` to IDX.

Because:

```
24 bits / 8 bits per access unit = 3
```

---

## 🔹 Mental Model

Think of `IndexField` like this:

1. The field block defines a logical array of access-sized slots.
2. Each slot corresponds to one value of the index register.
3. AML calculates which slot contains the field.
4. That slot number is written to the index register.

---

## 🔹 Why It Works This Way

This design matches how typical indexed hardware works:

```
write(index_register, register_number)
read_or_write(data_register)
```

Hardware usually expects a register number — not a byte offset — so ACPI aligns the index value to the access granularity.

---

If you'd like, I can also explain:

* What happens internally in AML opcodes for IndexField
* How ACPICA computes the index
* Or what happens if a field is not aligned to the access width (that gets interesting)


# Using AnyAcc

Excellent — **`AnyAcc`** is where things get interesting.

With `AnyAcc`, the index calculation rule **does not change**, but the **effective access width becomes dynamic**.

Let’s break it down carefully.

---

# 🔹 What `AnyAcc` Means

In an `IndexField`:

```asl
IndexField (IDX, DAT, AnyAcc, NoLock, Preserve)
```

`AnyAcc` means:

> The interpreter chooses the smallest natural access width (8, 16, 32, or 64 bits) that can contain the field and is supported by the region.

So the access width is **determined per field**, not fixed for the whole IndexField.

This behavior is defined by the ACPI specification from the UEFI Forum.

---

# 🔹 Example 1 — Mixed Field Sizes

```asl
OperationRegion (REGS, SystemIO, 0x10, 0x02)

Field (REGS, ByteAcc, NoLock, Preserve)
{
    IDX, 8,
    DAT, 8
}

IndexField (IDX, DAT, AnyAcc, NoLock, Preserve)
{
    REG0, 8,
    REG1, 16,
    REG2, 8
}
```

---

## 🔹 Step 1 — Bit Layout

| Field | Bit Offset | Size |
| ----- | ---------- | ---- |
| REG0  | 0          | 8    |
| REG1  | 8          | 16   |
| REG2  | 24         | 8    |

---

## 🔹 Step 2 — What Access Width Is Chosen?

Because the underlying `Field` defined `DAT` as 8 bits wide:

```asl
DAT, 8
```

The data register is only **1 byte wide**.

So even though we said `AnyAcc`, the interpreter **cannot use WordAcc**, because DAT is 8 bits.

So effective access width = **8 bits**.

---

## 🔹 Step 3 — Index Calculation

Formula still applies:

```
Index = (bit offset) / (access width in bits)
```

Access width = 8 bits.

| Field | Bit Offset | Index |
| ----- | ---------- | ----- |
| REG0  | 0          | 0     |
| REG1  | 8          | 1     |
| REG2  | 24         | 3     |

So:

To access `REG2`, AML writes:

```
3
```

to `IDX`.

---

# 🔹 Example 2 — Wider Data Register

Now let's change the data register:

```asl
OperationRegion (REGS, SystemIO, 0x10, 0x04)

Field (REGS, WordAcc, NoLock, Preserve)
{
    IDX, 16,
    DAT, 16
}

IndexField (IDX, DAT, AnyAcc, NoLock, Preserve)
{
    REG0, 8,
    REG1, 16,
    REG2, 8
}
```

Now:

* DAT is 16 bits wide
* Region supports Word access

---

## 🔹 What Happens Now?

For each field:

### REG0 (8 bits)

Smallest natural access = 8 bits
But DAT is 16 bits → interpreter typically uses 16-bit access

So access width = 16 bits
Bit offset = 0

```
0 / 16 = 0
```

Index = 0

---

### REG1 (16 bits)

Natural width = 16 bits
Offset = 8 bits

Now here’s the important part:

Bit offset 8 is **not aligned** to 16 bits.

So interpreter cannot use Word access cleanly.

It falls back to **byte-style accesses** internally.

So effective access width = 8 bits.

```
8 / 8 = 1
```

Index = 1

---

### REG2 (8 bits)

Offset = 24 bits

Access width likely 8 bits again.

```
24 / 8 = 3
```

Index = 3

---

# 🔹 Key Insight About AnyAcc

With `AnyAcc`:

* Access width is chosen per-field
* It must:

  * Fit the field size
  * Be aligned properly
  * Be supported by the region

Then index is calculated based on that chosen width.

---

# 🔹 Important Practical Reality

For **IndexField**, most firmware in practice:

* Uses `ByteAcc`
* Or has DAT defined as 8 bits

Because most indexed hardware expects:

```
write index register (byte)
read/write data register (byte)
```

Using `AnyAcc` can introduce alignment subtleties and is rarely needed.

---

# 🔹 Summary Rule

Even with `AnyAcc`:

```
Index = (Field bit offset) / (Effective access width in bits)
```

But the effective width is dynamically selected.

---

If you'd like, I can next show:

* A real-world ACPI snippet from a PC Super I/O controller
* How ACPICA implements this internally
* Or a misalignment case that causes unexpected index values (those are fun to debug)

# Explain all three

Great — let’s go through all three in a concrete, low-level way.

---

# 1️⃣ Real-world style example: Super I/O controller

Classic PC Super-I/O chips (like the Nuvoton / ITE Tech. Inc. families) typically expose configuration registers like this:

* **Index port**: 0x2E
* **Data port**:  0x2F

You write a register number to 0x2E, then read/write its value at 0x2F.

A typical ACPI ASL pattern looks like:

```asl
OperationRegion (SIOP, SystemIO, 0x2E, 0x02)

Field (SIOP, ByteAcc, NoLock, Preserve)
{
    SIDX, 8,   // 0x2E
    SDAT, 8    // 0x2F
}

IndexField (SIDX, SDAT, ByteAcc, NoLock, Preserve)
{
    Offset (0x07),
    LDN,   8,        // Logical Device Number

    Offset (0x20),
    ACT,   1,        // Activate
    ,      7,

    IOH,   8,        // I/O Base High
    IOL,   8         // I/O Base Low
}
```

### What happens when ACPI reads `IOH`?

1. AML writes `0x60` (for example) to `SIDX`
2. AML reads from `SDAT`
3. Returns that value

The important part:

* The `Offset()` directive directly sets the **index value**
* With `ByteAcc`, the index equals the offset value

So if `IOH` is placed after `Offset (0x60)`, AML writes:

```
0x60
```

to the index register.

This mirrors the Super-I/O datasheet exactly — the index number is literally the hardware register number.

---

# 2️⃣ How ACPICA actually computes the index internally

In the ACPICA implementation (used by Linux, BSD, etc.), the flow is roughly:

### Step A — Field creation

When AML is loaded:

* The interpreter builds an internal `ACPI_OPERAND_OBJECT`
* It stores:

  * Field bit offset
  * Field bit length
  * Access type (ByteAcc, AnyAcc, etc.)

### Step B — When the field is accessed

When AML evaluates something like:

```asl
Store (IOH, Local0)
```

ACPICA does roughly:

```
1. Determine effective access width
2. Compute:
   index_value = field_bit_offset / access_width_bits
3. Write index_value to index register
4. Perform data register access
```

For `IndexField`, this logic is in the dispatcher that handles AML field objects (in ACPICA’s field I/O layer).

So the math you’ve been asking about is literally implemented as:

```
Index = BaseOffset + (FieldBitOffset / AccessWidth)
```

Where:

* `BaseOffset` comes from `Offset()` directives
* `AccessWidth` may change under `AnyAcc`

---

# 3️⃣ A misalignment case that causes surprising index values

This is where `AnyAcc` gets tricky.

Consider:

```asl
IndexField (IDX, DAT, AnyAcc, NoLock, Preserve)
{
    REG0, 8,
    REG1, 16,
    REG2, 8
}
```

Assume:

* DAT is 16 bits wide
* Region supports WordAcc

### Layout:

| Field | Bit Offset |
| ----- | ---------- |
| REG0  | 0          |
| REG1  | 8          |
| REG2  | 24         |

---

## What you might expect

You might think:

* REG1 is 16 bits
* So index = 8 / 16 = 0.5 → maybe 0?

But that’s wrong.

---

## What actually happens

Because REG1 starts at bit offset 8:

* It is **not aligned to 16 bits**
* ACPICA cannot legally perform a Word access at offset 8

So it falls back to **byte accesses**

Effective width becomes 8 bits.

Now calculation becomes:

```
8 / 8 = 1
```

So:

* REG1 uses index 1
* REG2 uses index 3

This surprises firmware authors who expected 16-bit stepping.

---

## Even More Subtle Example

```asl
IndexField (IDX, DAT, AnyAcc, NoLock, Preserve)
{
    Offset (1),
    REGX, 16
}
```

Offset(1) means:

```
FieldBitOffset = 8
```

Even though REGX is 16 bits:

* It is not 16-bit aligned
* Access width becomes 8
* Index written = 1

If firmware expected index = 0 and a 16-bit read, it will break.

This is a real-world source of ACPI bugs.

---

# 🔎 Key Takeaways

### For ByteAcc

```
Index = byte offset
```

Simple and predictable.

---

### For AnyAcc

```
EffectiveWidth =
    smallest natural width
    that fits field
    AND is aligned
    AND supported by region

Index = FieldBitOffset / EffectiveWidth
```

Alignment can silently change the access width.

---

# 💡 Why Most Firmware Avoids AnyAcc for IndexField

Because indexed hardware almost always behaves like:

```
write 8-bit register number
read/write 8-bit data
```

So firmware writers nearly always use:

```
ByteAcc
```

to avoid alignment surprises.

---

If you'd like, I can next show:

* A diagram of the AML bytecode generated for IndexField
* Or a step-by-step trace of an actual field access as ACPICA executes it
* Or a deliberately broken ASL example and explain exactly why it fails
