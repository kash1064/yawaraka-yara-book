rule ForString_1
{
    strings:
        $text1 = "AAA"
        $text2 = "BBB"
        $text3 = "CCC"

    condition:
        for all of ($text1, $text2, $text3) : ( $ )
}

rule ForString_2
{
    strings:
        $text1 = /A*A/


    condition:
        for 1 of ($text*) : ( for any i in (1..#) : ( ![i] > 20) )
}