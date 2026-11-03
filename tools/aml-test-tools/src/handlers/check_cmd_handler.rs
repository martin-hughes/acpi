//! A wrapper around another [`Handler`] that checks for the correct sequence of commands in a test.

use acpi::{Handle, Handler, RawPhysicalMapping, aml::AmlError};
use std::sync::{
    Arc,
    atomic::{AtomicUsize, Ordering::Relaxed},
};

/// The commands that may be received by an ACPI [`handler`](Handler).
///
/// They are written as an enum to allow a list of commands to be stored in a [`Vec`] or similar.
/// A `Vec` of these is used by [`CheckCommandHandler`]
#[derive(Clone, Copy, Debug, PartialEq)]
pub enum AcpiCommands {
    MapPhysicalRegion(usize, usize),
    UnmapPhysicalRegion(usize),
    NanosSinceBoot,
    Stall(u64),
    Sleep(u64),
    CreateMutex,
    Acquire(Handle, u16),
    Release(Handle),
}

/// A wrapper around another [`Handler`] that checks the correct sequence of commands are being
/// generated, and that they have the expected parameters.
#[derive(Clone, Debug)]
pub struct CheckCommandHandler<H>
where
    H: Handler + Clone,
{
    commands: Vec<AcpiCommands>,
    next_command_idx: Arc<AtomicUsize>,
    next_handler: H,
}

impl<H> CheckCommandHandler<H>
where
    H: Handler + Clone,
{
    pub fn new(commands: Vec<AcpiCommands>, next_handler: H) -> Self {
        Self { commands, next_command_idx: Arc::new(AtomicUsize::new(0)), next_handler }
    }

    fn check_command(&self, command: AcpiCommands) {
        let next_command_idx = self.next_command_idx.fetch_add(1, Relaxed);
        let next_command = self.commands.get(next_command_idx);

        if next_command.is_none() {
            panic!("More commands attempted than expected");
        };

        assert_eq!(*next_command.unwrap(), command);
    }
}

impl<H> Drop for CheckCommandHandler<H>
where
    H: Handler + Clone,
{
    fn drop(&mut self) {
        // Don't do this if the test has already failed, to avoid a double-panic.
        if !std::thread::panicking() {
            assert_eq!(
                self.next_command_idx.load(std::sync::atomic::Ordering::Relaxed),
                self.commands.len(),
                "Not all commands were executed"
            );
        }
    }
}

impl<H> Handler for CheckCommandHandler<H>
where
    H: Handler + Clone,
{
    unsafe fn map_physical_region<T>(&self, physical_address: usize, size: usize) -> RawPhysicalMapping<T> {
        self.check_command(AcpiCommands::MapPhysicalRegion(physical_address, size));

        unsafe { self.next_handler.map_physical_region::<T>(physical_address, size) }
    }

    unsafe fn unmap_physical_region<T>(&self, region: RawPhysicalMapping<T>) {
        // This function can be called during a panic, and it's pretty unlikely this command will
        // be in the expected commands list...
        //
        // Also stop checking if we're at or past the end of the command list. This stops any
        // confusion about whether we're in Drop or not.
        if !std::thread::panicking() && self.commands.len() > self.next_command_idx.load(Relaxed) {
            self.check_command(AcpiCommands::UnmapPhysicalRegion(region.physical_start()));
        }

        unsafe {
            self.next_handler.unmap_physical_region(region);
        }
    }

    fn nanos_since_boot(&self) -> u64 {
        self.check_command(AcpiCommands::NanosSinceBoot);
        self.next_handler.nanos_since_boot()
    }

    fn stall(&self, microseconds: u64) {
        self.check_command(AcpiCommands::Stall(microseconds));
        self.next_handler.stall(microseconds);
    }

    fn sleep(&self, milliseconds: u64) {
        self.check_command(AcpiCommands::Sleep(milliseconds));
        self.next_handler.sleep(milliseconds);
    }

    fn create_mutex(&self) -> Handle {
        self.check_command(AcpiCommands::CreateMutex);
        self.next_handler.create_mutex()
    }

    fn acquire(&self, mutex: Handle, timeout: u16) -> Result<(), AmlError> {
        self.check_command(AcpiCommands::Acquire(mutex, timeout));
        self.next_handler.acquire(mutex, timeout)
    }

    fn release(&self, mutex: Handle) {
        self.check_command(AcpiCommands::Release(mutex));
        self.next_handler.release(mutex);
    }
}

#[cfg(test)]
mod test {
    use super::*;
    use crate::handlers::null_handler::NullHandler;

    #[test]
    fn handler_basic_functions() {
        let test_commands = vec![AcpiCommands::NanosSinceBoot, AcpiCommands::Sleep(1000)];

        let handler = CheckCommandHandler::new(test_commands, NullHandler {});
        handler.nanos_since_boot();
        handler.sleep(1000);
    }

    #[test]
    #[should_panic]
    fn handler_fails_for_wrong_command() {
        let test_commands = vec![AcpiCommands::Sleep(1001), AcpiCommands::Stall(1000)];

        let handler = CheckCommandHandler::new(test_commands, NullHandler {});
        handler.sleep(1000);
        // We shouldn't actually make it to this command, but it makes sure the handler doesn't panic for having too few
        // commands sent to it.
        handler.stall(1000);
    }

    #[test]
    #[should_panic]
    fn handler_fails_for_too_many_commands() {
        let test_commands = vec![AcpiCommands::NanosSinceBoot, AcpiCommands::Sleep(1000)];

        let handler = CheckCommandHandler::new(test_commands, NullHandler {});
        handler.nanos_since_boot();
        handler.sleep(1000);
        handler.stall(5);
    }

    #[test]
    #[should_panic]
    fn handler_fails_for_too_few_commands() {
        let test_commands = vec![AcpiCommands::NanosSinceBoot, AcpiCommands::Sleep(1000)];

        let handler = CheckCommandHandler::new(test_commands, NullHandler {});
        handler.nanos_since_boot();
    }

    #[test]
    #[should_panic]
    fn check_handler_fails_gracefully_for_no_commands() {
        let test_commands: Vec<AcpiCommands> = vec![];
        let handler = CheckCommandHandler::new(test_commands, NullHandler {});
        handler.nanos_since_boot();
    }
}
