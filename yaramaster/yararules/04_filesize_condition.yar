rule Size_Under100B
{
    condition:
        filesize < 100
}

rule Size_Over1KB
{
    condition:
        filesize > 1KB
}

rule Size_Under1MB
{
    condition:
        filesize < 1MB
}
