rule get_FLAG_address
{
    strings:
        $flag = "FLAG{" base64 ascii wide

    condition:
        $flag
}

rule get_FLAG_end
{
    strings:
        $flag = "FLAG{" base64 ascii wide
        $endflag = "}" base64 ascii wide

    condition:
        for any i in (1..#endflag) : ( (@endflag[i] - @flag) < 32)
}