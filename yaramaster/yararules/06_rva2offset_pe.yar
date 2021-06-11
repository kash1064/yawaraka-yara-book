import "pe"

rule rva_to_offset
{
    condition:
        pe.rva_to_offset(0x14e0) == 0xae0 and
        pe.rva_to_offset(pe.entry_point_raw) == pe.entry_point
}

rule rva_to_offset2
{
    condition:
        pe.image_base == 0x400000 and
        pe.rva_to_offset(0x4014e0 - pe.image_base) == pe.entry_point
}