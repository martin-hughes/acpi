use crate::{aml::namespace::AmlName, new_region_handlers::RegionSpace};

#[derive(Clone, Debug)]
pub struct OpRegion {
    pub space: RegionSpace,
    pub base: u64,
    pub length: u64,
    pub parent_device_path: AmlName,
}
