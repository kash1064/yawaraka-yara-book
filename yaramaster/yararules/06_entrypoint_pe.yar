import "pe"

rule get_entrypoint
{
    strings:
        $entry = { 48 83 ec 28 48 8b 05 55 2f 00 }

    condition:
        @entry == 0xae0 and
        pe.entry_point == 0xae0
}

rule get_entrypoint_raw
{
    condition:
        pe.entry_point_raw == 0x14e0
}