import "my_dict"

/*
my_dict = {"a": 3, "b": 4, "c": 5}
*/

rule DictSample1
{
    condition:
        for all k,v in my_dict.my_dict : ( 
            k == "a" and v == 3 or
            k == "b" and v == 4 or
            k == "c" and v == 5
        )
}