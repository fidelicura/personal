// ** IMPLEMENTATION ** //

#include <stdio.h>
#include <stdlib.h>
#include "tests.h"

int main(void)
{
    printf("Welcome! Starting tests...\n");
    test_spinlock();
    test_semaphore();
    printf("Bye!\n");

    return EXIT_SUCCESS;
}

// ** IMPLEMENTATION ** //
