There are multiple ways to determine memory order (_sometimes called "model"_) for two or more operations:
- `Relaxed` (`memory_order_relaxed`) - doesn't provide any order, so for the compiler/CPU it is totally fine to reorder operations (_e.g. on optimizations purpose_), most loose memory ordering model;
- `Sequentially Consistent` (`memory_order_seq_cst`) - does provide order in a way like we are get used to it as in default sequential execution, so compiler/CPU is not allowed to reorder operations at all, most strict memory ordering model;
- `Acquire Release` (`memory_order_acquire` + `memory_order_release`) - does provide order in a way like locks are used, we use acquire to hold other threads from accessing critical section, then we perform this critical section and then we release it;
- `Consume Release` (`memory_order_consume` + `memory_order_release`) - does provide order in a way like locks are used (_just like an acquire release_), but with difference that it is applied only for [dependency-ordered operations](https://preshing.com/20140709/the-purpose-of-memory_order_consume-in-cpp11/);

>More about [consume memory ordering](https://preshing.com/20140709/the-purpose-of-memory_order_consume-in-cpp11/).
