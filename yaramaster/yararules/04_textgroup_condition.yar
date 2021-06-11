rule TextOfSet1
{
    strings:
        $text1 = "AAA"
        $text2 = "BBB"
        $text3 = "CCC"

    condition:
        2 of ($text1, $text2, $text3)
}

rule TextOfSet2
{
    strings:
        $text1 = "AAA"
        $text2 = "BBB"
        $text3 = "CCC"

    condition:
        2 of ($text*)
}

rule TextOfSet3
{
    strings:
        $text1 = "AAA"
        $text2 = "BBB"
        $text3 = "CCC"

    condition:
        2 of them
}