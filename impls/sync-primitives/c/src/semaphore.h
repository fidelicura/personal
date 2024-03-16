// ** IMPLEMENTATION ** //

#include <stdatomic.h>

#define MAX_SLOTS 10

typedef atomic_int Semaphore;

void sem_init(Semaphore* lock, int value)
{
    atomic_init(lock, value);
}

void sem_wait(Semaphore* lock)
{
    int expected = 0;
    while (!atomic_compare_exchange_weak_explicit(lock, &expected, expected - 1, memory_order_acq_rel, memory_order_relaxed)) {
        if (expected < 0) {
            expected = 0;
        } else {
            while (atomic_load_explicit(lock, memory_order_relaxed) <= 0);
        }
    }
}

void sem_post(Semaphore* lock)
{
    int expected = atomic_load_explicit(lock, memory_order_relaxed);
    while (expected < MAX_SLOTS && !atomic_compare_exchange_weak_explicit(lock, &expected, expected + 1, memory_order_acq_rel, memory_order_relaxed));
}

// ** IMPLEMENTATION ** //
