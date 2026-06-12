# Acpi

![Build Status](https://github.com/martin-hughes/acpi/actions/workflows/build.yml/badge.svg)
[![Version](https://img.shields.io/crates/v/mh-acpi.svg?style=rounded-square)](https://crates.io/crates/mh-acpi/)

## What is this crate?

This is my fork of Isaac Woods' [acpi](https://github.com/acpi-rs/acpi) crate. It exists to allow
me to test my fixes and try out other ways I want to modify the code.

The licence remains the same.

### Version numbers

The original crate is (at the time of writing) up to v6.1.1. Since it's likely I'll be making
various incompatible changes, I'm starting again from v0.0.1 - so for now, consider each version
to be incompatible with the previous.

### Using this crate

Whilst it remains compatible with the original, add something like this to your `Cargo.toml`. This
will avoid the need to rename all your existing uses of `acpi`.

```toml
[dependencies]
acpi = { package = "mh-acpi", version = "0.0.1" }  
```

### Contributing

Please feel free to contribute as much as you feel comfortable - I welcome all contributions,
including issues, PRs, PR reviews, or comments on anything you see.

### Git History

For the time being, I'd like to be able to use the upstream `acpi` code as much as possible. For
that reason, there *may* not be a linear Git history between adjacent version numbers. It depends
on how I choose to merge upstream changes to this repo.

---
> Below this point the documentation is from the original crate.

## [Documentation](https://docs.rs/acpi)

`acpi` is a Rust library for interacting with the Advanced Configuration and Power Interface, a
complex framework for power management and device discovery and configuration. ACPI is used on
modern x64, as well as some ARM and RISC-V platforms. An operating system needs to interact with
ACPI to correctly set up a platform's interrupt controllers, perform power management, and fully
support many other platform capabilities.

This crate provides a limited API that can be used without an allocator, for example for use
from a bootloader. This API will allow you to search for the RSDP, enumerate over the available
tables, and interact with the tables using their raw structures. All other functionality is
behind an `alloc` feature (enabled by default) and requires an allocator.

With an allocator, this crate provides a richer higher-level interfaces to the static tables, as
well as a dynamic interpreter for AML - the bytecode format encoded in the DSDT and SSDT tables.

See the library documentation for example usage. You will almost certainly need to read portions
of the [ACPI Specification](https://uefi.org/specifications) too (however, be aware that firmware often
ships with ACPI tables that are not spec-compliant).

## Licence

This project is dual-licensed under:

- Apache Licence, Version 2.0 ([LICENCE-APACHE](LICENCE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENCE-MIT](LICENCE-MIT) or http://opensource.org/licenses/MIT)

Unless you explicitly state otherwise, any contribution submitted for inclusion in this work by you,
as defined in the Apache-2.0 licence, shall be dual licenced as above, without additional terms or
conditions.
