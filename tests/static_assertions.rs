use std::ops::Deref;
use static_assertions::assert_impl_all;
use acpi::aml::AmlError;
use acpi::aml::object::{Object, ObjectToken, WrappedObjectTrait};

trait WOSS: WrappedObjectTrait + Send + Sync {}

struct WOSST;

impl WrappedObjectTrait for WOSST {
    fn new(object: Object<Self>) -> Self {
        todo!()
    }

    unsafe fn gain_mut<'r, 'a, 't>(&'a self, _token: &'t ObjectToken) -> &'r mut Object<Self>
    where
        't: 'r,
        'a: 'r,
    {
        todo!()
    }

    fn unwrap_reference(self) -> Self {
        todo!()
    }

    fn unwrap_transparent_reference(self) -> Self {
        todo!()
    }

    fn unwrap_ref_for_store(self) -> Result<(Self, bool), AmlError> {
        todo!()
    }
}

impl Clone for WOSST {
    fn clone(&self) -> Self {
        todo!()
    }
}

impl Deref for WOSST {
    type Target = Object<Self>;

    fn deref(&self) -> &Self::Target {
        todo!()
    }
}

impl WOSS for WOSST {}
unsafe impl Send for WOSST {}
unsafe impl Sync for WOSST {}

assert_impl_all!(Object<WOSST>: Send, Sync);
