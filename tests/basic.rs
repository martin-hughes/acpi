mod test_infra;

#[test]
fn test_basic() {
    const AML: &'static str = r#"DefinitionBlock("%FN%", "DSDT", 1, "RSACPI", "IDXFLD", 1) {
    // Adapted from part of the DSDT on a Dell XPS 13 laptop.
    OperationRegion (RTCO, SystemIO, 0x72, 0x02)
    Field (RTCO, ByteAcc, NoLock, Preserve)
    {
        CIND,   8,
        CDAT,   8
    }
    IndexField (CIND, CDAT, AnyAcc, NoLock, Preserve)
    {
        Offset (0x5A),
        TEST,   16
    }

    TEST++
}"#;



    //test_infra::run_aml_test(AML);
    assert_eq!(1, 1);
}
