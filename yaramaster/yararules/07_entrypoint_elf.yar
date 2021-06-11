import "elf"

rule get_entrypoint
{
    strings:
        $entry = { 31 ed 49 89 d1 }

    condition:
        @entry == 0x1040 and
        elf.entry_point == 0x1040
}