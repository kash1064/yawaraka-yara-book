rule ext_val_1
{
    condition:
       ext_num == 100
}

rule ext_val_2
{
    condition:
        ext_text contains "ext"
}

rule ext_val_3
{
    condition:
        ext_text matches /[A-Z]+/
}