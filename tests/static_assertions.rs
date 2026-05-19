use static_assertions::assert_impl_all;
use acpi::aml::Interpreter;
use aml_test_tools::handlers::null_handler::NullHandler;

assert_impl_all!(Interpreter<NullHandler>: Send, Sync);
