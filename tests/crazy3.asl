DefinitionBlock ("", "SSDT", 2, "AMD", "AmdTable", 0x00000002)
{
    Scope (\_SB)
    {
        Name (ADAT, Buffer (0x0010) //keep
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........

        })

        Device (AWR0)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x90)  // _UID: Unique ID
            Device (ABR0)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x80)  // _UID: Unique ID
                OperationRegion (A053, SystemMemory, (DerefOf (\_SB.ADAT [(0x04)])), 0x1000)
                Field (A053, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x18),
                    A, 8
                }
            }
        }
    }
}