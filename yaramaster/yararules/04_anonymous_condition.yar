rule AnonymousStrings_1
{
    strings:
        $ = "AAA"
        $ = "BBB"
        $ = "CCC"

    condition:
        all of them
}

rule AnonymousStrings_2
{
    strings:
        $ = "AAA"
        $ = "BBB"
        $ = "CCC"

    condition:
        1 of ($*)
}