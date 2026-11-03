//! A [`Handler`] that does nothing useful.

use acpi::{Handle, Handler, RawPhysicalMapping, aml::AmlError};

#[derive(Clone)]
pub struct NullHandler;

/// A [`Handler`] that does nothing. If required, it will generally return zero.
///
/// This is useful as a placeholder if you really don't care what values the core [`acpi`] parser
/// receives.
impl Handler for NullHandler {
    unsafe fn map_physical_region<T>(&self, _physical_address: usize, _size: usize) -> RawPhysicalMapping<T> {
        // This isn't implemented in `aml-tester` either
        todo!()
    }

    unsafe fn unmap_physical_region<T>(&self, _region: RawPhysicalMapping<T>) {}

    fn nanos_since_boot(&self) -> u64 {
        1000
    }

    fn stall(&self, _microseconds: u64) {}

    fn sleep(&self, _milliseconds: u64) {}

    fn create_mutex(&self) -> Handle {
        Handle(0)
    }

    fn acquire(&self, _mutex: Handle, _timeout: u16) -> Result<(), AmlError> {
        Ok(())
    }

    fn release(&self, _mutex: Handle) {}
}
