//! Rather than defining a [`Handler`], this module defines useful functions to streamline the most-
//! used case of a [`CheckCommandHandler`] wrapping a [`ListedResponseHandler`].

use crate::handlers::{
    check_cmd_handler::{AcpiCommands as Check, CheckCommandHandler},
    listed_response_handler::{AcpiCommands as Response, ListedResponseHandler},
};
use acpi::{Handle, Handler};

/// Simplifies the construction of a standard test [`Handler`].
///
/// By combining the commands and responses into a single tuple, it hopefully makes test files
/// easier to read and write.
pub type Command = (Check, Response);

/// Construct a "standard handler".
///
/// This is the handler that I expect to be used most often in tests. (A [`CheckCommandHandler`]
/// wrapping a [`ListedResponseHandler`]).
pub fn construct_std_handler(commands: Vec<Command>) -> impl Handler {
    let (c, r): (Vec<Check>, Vec<Response>) = commands.into_iter().unzip();

    CheckCommandHandler::new(c, ListedResponseHandler::new(r))
}

/// A simple helper to generate a [`Command`] for [`Handler::map_physical_region`].
pub const fn map_physical_region(physical_address: usize, size: usize) -> Command {
    (Check::MapPhysicalRegion(physical_address, size), Response::Skip())
}

/// A simple helper to generate a [`Command`] for [`Handler::unmap_physical_region`].
pub const fn unmap_physical_region(region: usize) -> Command {
    (Check::UnmapPhysicalRegion(region), Response::Skip())
}

/// A simple helper to generate a [`Command`] for [`Handler::nanos_since_boot`].
pub const fn nanos_since_boot(response: u64) -> Command {
    (Check::NanosSinceBoot, Response::NanosSinceBoot(response))
}

/// A simple helper to generate a [`Command`] for [`Handler::stall`].
pub const fn stall(microseconds: u64) -> Command {
    (Check::Stall(microseconds), Response::Skip())
}

/// A simple helper to generate a [`Command`] for [`Handler::sleep`].
pub const fn sleep(milliseconds: u64) -> Command {
    (Check::Sleep(milliseconds), Response::Skip())
}

/// A simple helper to generate a [`Command`] for [`Handler::create_mutex`].
pub const fn create_mutex() -> Command {
    (Check::CreateMutex, Response::Skip())
}

/// A simple helper to generate a [`Command`] for [`Handler::acquire`].
pub const fn acquire(mutex: Handle, timeout: u16) -> Command {
    (Check::Acquire(mutex, timeout), Response::Skip())
}

/// A simple helper to generate a [`Command`] for [`Handler::release`].
pub const fn release(mutex: Handle) -> Command {
    (Check::Release(mutex), Response::Skip())
}
