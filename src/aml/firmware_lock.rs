use crate::{Handler, PhysicalMapping, sdt::facs::Facs};
use bit_field::BitField;
use core::sync::atomic::Ordering;

pub(crate) struct FirmwareLock<H>
where
    H: Handler,
{
    facs: Option<PhysicalMapping<H, Facs>>,
}

unsafe impl<H> Send for FirmwareLock<H> where H: Handler + Send {}
unsafe impl<H> Sync for FirmwareLock<H> where H: Handler + Send {}

impl<H> FirmwareLock<H>
where
    H: Handler,
{
    pub fn new(facs: Option<PhysicalMapping<H, Facs>>) -> Self {
        Self { facs }
    }

    /// Attempt to acquire the firmware lock, setting the owned bit if the lock is free. If the
    /// lock is not free, sets the pending bit to instruct the firmware to alert us when we can
    /// attempt to take ownership of the lock again. Returns `true` if we now have ownership of the
    /// lock, and `false` if we need to wait for firmware to release it.
    pub fn try_do_acquire_firmware_lock(&self) -> bool {
        let Some(facs) = &self.facs else { return true };
        loop {
            let global_lock = facs.global_lock.load(Ordering::Relaxed);
            let is_owned = global_lock.get_bit(1);

            /*
             * Compute the new value: either the lock is already owned, and we need to set the
             * pending bit and wait, or we can acquire ownership of the lock now. Either way, we
             * unconditionally set the owned bit and set the pending bit if the lock is already
             * owned.
             */
            let mut new_value = global_lock;
            new_value.set_bit(0, is_owned);
            new_value.set_bit(1, true);

            if facs
                .global_lock
                .compare_exchange(global_lock, new_value, Ordering::AcqRel, Ordering::Acquire)
                .is_ok()
            {
                break !is_owned;
            }
        }
    }

    /// Atomically release the owned and pending bits of the global lock. Returns whether the
    /// pending bit was set (this means the firmware is waiting to acquire the lock, and should be
    /// informed we're finished with it).
    pub fn do_release_firmware_lock(&self) -> bool {
        let Some(facs) = &self.facs else { return false };
        loop {
            let global_lock = facs.global_lock.load(Ordering::Relaxed);
            let is_pending = global_lock.get_bit(0);
            let mut new_value = global_lock;
            new_value.set_bit(0, false);
            new_value.set_bit(1, false);

            if facs
                .global_lock
                .compare_exchange(global_lock, new_value, Ordering::AcqRel, Ordering::Acquire)
                .is_ok()
            {
                break is_pending;
            }
        }
    }
}
