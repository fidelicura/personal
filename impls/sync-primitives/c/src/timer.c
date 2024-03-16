// ** IMPLEMENTATION ** //
#include <time.h>
#include <stdio.h>

static float start;
static float end;
static float result;

static void timer_clear(void)
{
    start = 0.0;
    end = 0.0;
    result = 0.0;
}

void timer_start(char* msg)
{
    printf("[%s] Started...\n", msg);
    start = (float)clock() / CLOCKS_PER_SEC;
}

void timer_end(char* msg)
{
    end = (float)clock() / CLOCKS_PER_SEC;
    result = end - start;
    printf("[%s] Finished: %f\n", msg, result);
    timer_clear();
}

// ** IMPLEMENTATION ** //
