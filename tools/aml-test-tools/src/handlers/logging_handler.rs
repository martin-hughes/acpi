//! A [`Handler`] that logs all calls, then forwards them to an inner handler.

use acpi::{Handle, Handler, RawPhysicalMapping, aml::object::Object};
use log::info;

/// A [`Handler`] wrapper that logs every call to `info!` and then forwards it to an inner handler.
///
/// Use this Handler to have a logging style consistent with the [`acpi`] crate's tests.
#[derive(Clone)]
pub struct LoggingHandler<H> {
    next_handler: H,
}

impl<H> LoggingHandler<H>
where
    H: Handler,
{
    pub fn new(next_handler: H) -> Self {
        Self { next_handler }
    }
}

impl<H> Handler for LoggingHandler<H>
where
    H: Handler,
{
    unsafe fn map_physical_region<T>(&self, physical_address: usize, size: usize) -> RawPhysicalMapping<T> {
        info!("map_physical_region(physical_address={:#x}, size={:#x})", physical_address, size);

        unsafe { self.next_handler.map_physical_region::<T>(physical_address, size) }
    }

    unsafe fn unmap_physical_region<T>(&self, region: RawPhysicalMapping<T>) {
        info!("unmap_physical_region(physical_start={:#x})", region.physical_start());

        unsafe {
            self.next_handler.unmap_physical_region(region);
        }
    }

    fn nanos_since_boot(&self) -> u64 {
        info!("nanos_since_boot()");
        self.next_handler.nanos_since_boot()
    }

    fn stall(&self, microseconds: u64) {
        info!("stall(microseconds={})", microseconds);
        self.next_handler.stall(microseconds);
    }

    fn sleep(&self, milliseconds: u64) {
        info!("sleep(milliseconds={})", milliseconds);
        self.next_handler.sleep(milliseconds);
    }

    fn create_mutex(&self) -> Handle {
        info!("create_mutex()");
        self.next_handler.create_mutex()
    }

    fn acquire(&self, mutex: Handle, timeout: u16) -> Result<(), acpi::aml::AmlError> {
        info!("acquire(mutex={:?}, timeout={})", mutex, timeout);
        self.next_handler.acquire(mutex, timeout)
    }

    fn release(&self, mutex: Handle) {
        info!("release(mutex={:?})", mutex);
        self.next_handler.release(mutex);
    }

    fn handle_debug(&self, object: &Object) {
        info!("Debug store: {}", object);
        self.next_handler.handle_debug(object);
    }
}
