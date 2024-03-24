Synchronization primitives are used to prevent multiple threads from [race condition](https://stackoverflow.com/questions/34510/what-is-a-race-condition).
Race condition is a situation, where two or more threads trying to access the same data at the same time, resulting in unknown result: data could be consistent, could be overwritten twice with the same info, could be reoverwritten more than expected and so on.