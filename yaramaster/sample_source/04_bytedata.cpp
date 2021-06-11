#include <stdio.h>
#include <iostream>

int main()
{
    int numbers[4];
    numbers[0] = 100;
    numbers[1] = 256;
    numbers[2] = 65535;
    numbers[3] = 0;

    for (auto i : numbers)
    {
        std::cout << i << std::endl;
    }
    return 0;
}