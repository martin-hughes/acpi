DefinitionBlock ("", "SSDT", 2, "AMD", "AmdTable", 0x00000002)
{
    Scope (\_SB)
    {
        Name (ADAT, Buffer (0x0010) //keep
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........

        })

        OperationRegion (MEM, SystemMemory, 0x1000, 0x2000)
        Field(MEM, ByteAcc, NoLock, Preserve)
        {
            A, 8
        }

        Method(MAIN, 0, NotSerialized) {
            A = (DerefOf(ADAT[0x10]))
        }
    }
}