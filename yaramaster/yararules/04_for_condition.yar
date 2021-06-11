rule For_1
{
    strings:
        $text = /A[B-Y]{1,6}Z/

    condition:
        for all i in (1..#text) : ( !text[i] > 3 )
}

rule For_2
{
    strings:
        $text = /A[B-Y]{1,6}Z/

    condition:
        for all i in (1..#text) : ( !text[i] < 5 )
}