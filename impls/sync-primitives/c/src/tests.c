// ** IMPLEMENTATION ** //

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include "timer.h"

#define THREADS_AMOUNT (4096)

pthread_t threads_array[THREADS_AMOUNT];

static void _init_threads_array(void* (*ctx)(void*))
{
    for (int idx = 0; idx < THREADS_AMOUNT; idx++) {
        pthread_t thread;
        if (pthread_create(&thread, NULL, ctx, NULL) != 0) {
            printf("[FAIL] Threads creation at index %i\n", idx);
            exit(EXIT_FAILURE);
        }
        threads_array[idx] = thread;
    }
}

static void _start_threads_array(void)
{
    for (int idx = 0; idx < THREADS_AMOUNT; idx++) {
        if (pthread_join(threads_array[idx], NULL) != 0) {
            printf("[FAIL] Threads join at index %i\n", idx);
            exit(EXIT_FAILURE);
        }
    }
}

// ** IMPLEMENTATION ** //

// ** CASE ** //

int value = 0;

// ** CASE ** //

// ** SPINLOCK ** //

#include "spinlock.h"

#define SL_MSG ("SPINLOCK")

Spinlock sl;

static void* test_spinlock_ctx(void* smth)
{
    (void)smth;

    sl_acquire(&sl);
    value += 1;
    sl_release(&sl);

    return NULL;
}

void test_spinlock(void)
{
    _init_threads_array(test_spinlock_ctx);
    timer_start(SL_MSG);
    _start_threads_array();
    timer_end(SL_MSG);
    value = 0;
}

// ** SPINLOCK ** //

// ** SEMAPHORE ** //

#include "semaphore.h"

#define SEM_MSG ("SEMAPHORE")

Semaphore sem = 10;

static void* test_semaphore_ctx(void* smth)
{
    (void)smth;

    sem_post(&sem);
    value += 1;
    sem_wait(&sem);

    return NULL;
}

void test_semaphore(void)
{
    _init_threads_array(test_semaphore_ctx);
    timer_start(SEM_MSG);
    _start_threads_array();
    timer_end(SEM_MSG);
    value = 0;
}

// ** SEMAPHORE ** //

// ** MUTEX ** //

// #include "mutex.c"

// #define MUTEX_MSG ("MUTEX")

// static void* test_mutex_ctx()
// {
//     return NULL;
// }

// static void test_mutex(void)
// {
//     _init_threads_array(test_mutex_ctx);
// }

// ** MUTEX ** //
