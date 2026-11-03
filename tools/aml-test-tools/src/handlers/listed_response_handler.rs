// TODO: Delete this file
// (it's being used for reference right now)

//! A basic [`Handler`] that returns an expected result from a provided sequence of commands.

use acpi::{Handle, Handler, RawPhysicalMapping, aml::AmlError};
use std::sync::{Arc, atomic::AtomicUsize};

/// Commands that may be received by a [handler](Handler) which return a value from the handler.
///
/// Commands that do not return a value are represented by [`Skip`](AcpiCommands::Skip).
///
/// A [`Vec`] of these is used by [`ListedResponseHandler`]
// Some variants are unused for the time being, until more tests are written.
#[allow(unused)]
#[derive(Clone, Copy, Debug, PartialEq)]
pub enum AcpiCommands {
    /// A stand-in for all commands that don't return a value.
    Skip(),
    NanosSinceBoot(u64),
}

/// A basic [`Handler`] that returns an expected result from a provided sequence of commands.
///
/// If the command is unexpected, this handler will panic.
#[derive(Clone, Debug)]
pub struct ListedResponseHandler {
    commands: Vec<AcpiCommands>,
    next_command_idx: Arc<AtomicUsize>,
}

impl ListedResponseHandler {
    pub fn new(commands: Vec<AcpiCommands>) -> Self {
        Self { commands, next_command_idx: Arc::new(AtomicUsize::new(0)) }
    }

    fn get_next_command(&self) -> AcpiCommands {
        let next_command_idx = self.next_command_idx.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
        let next_command = self.commands.get(next_command_idx);

        if next_command.is_none() {
            panic!("More commands attempted than expected");
        };

        *next_command.unwrap()
    }
}

macro_rules! check_and_get_result {
    ($self:ident, $expected_cmd:ident) => {
        match $self.get_next_command() {
            AcpiCommands::$expected_cmd(x) => x,
            _ => panic!("Unexpected command"),
        }
    };
}

macro_rules! check_is_skipped {
    ($self:ident) => {
        match $self.get_next_command() {
            AcpiCommands::Skip() => (),
            _ => panic!("Unexpected command"),
        }
    };
}
impl Drop for ListedResponseHandler {
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

impl Handler for ListedResponseHandler {
    unsafe fn map_physical_region<T>(&self, _physical_address: usize, _size: usize) -> RawPhysicalMapping<T> {
        // This isn't implemented in `aml-tester` either
        todo!()
    }

    unsafe fn unmap_physical_region<T>(&self, _region: RawPhysicalMapping<T>) {}

    fn nanos_since_boot(&self) -> u64 {
        check_and_get_result!(self, NanosSinceBoot)
    }

    fn stall(&self, _microseconds: u64) {
        check_is_skipped!(self)
    }

    fn sleep(&self, _milliseconds: u64) {
        check_is_skipped!(self)
    }

    fn create_mutex(&self) -> Handle {
        check_is_skipped!(self);
        Handle(1)
    }

    fn acquire(&self, _mutex: Handle, _timeout: u16) -> Result<(), AmlError> {
        check_is_skipped!(self);
        Ok(())
    }

    fn release(&self, _mutex: Handle) {
        check_is_skipped!(self)
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn handler_basic_functions() {
        let test_commands = vec![AcpiCommands::NanosSinceBoot(2), AcpiCommands::Skip()];

        let handler = ListedResponseHandler::new(test_commands);
        handler.nanos_since_boot();
        handler.stall(3);
    }

    #[test]
    #[should_panic]
    fn handler_fails_for_wrong_command() {
        let test_commands = vec![AcpiCommands::NanosSinceBoot(2), AcpiCommands::Skip()];

        let handler = ListedResponseHandler::new(test_commands);
        handler.stall(3);
        // We shouldn't actually make it to this command, but it makes sure the handler doesn't panic for having too few
        // commands sent to it.
        handler.stall(4);
    }

    #[test]
    #[should_panic]
    fn handler_fails_for_too_many_commands() {
        let test_commands = vec![AcpiCommands::NanosSinceBoot(2), AcpiCommands::Skip()];

        let handler = ListedResponseHandler::new(test_commands);
        handler.nanos_since_boot();
        handler.stall(3);
        handler.stall(4);
    }

    #[test]
    #[should_panic]
    fn handler_fails_for_too_few_commands() {
        let test_commands = vec![AcpiCommands::NanosSinceBoot(3), AcpiCommands::Skip()];

        let handler = ListedResponseHandler::new(test_commands);
        handler.nanos_since_boot();
    }

    #[test]
    #[should_panic]
    fn check_handler_fails_gracefully_for_no_commands() {
        let test_commands: Vec<AcpiCommands> = vec![];
        let handler = ListedResponseHandler::new(test_commands);
        handler.nanos_since_boot();
    }
}
