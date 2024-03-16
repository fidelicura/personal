// ** IMPLEMENTATION ** //

#include <stdatomic.h>

typedef atomic_flag Spinlock;

void sl_acquire(Spinlock* lock)
{
    while (atomic_flag_test_and_set(lock));
}

void sl_release(Spinlock* lock)
{
    atomic_flag_clear(lock);
}

// ** IMPLEMENTATION ** //
