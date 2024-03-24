CAS (_compare-and-swap_, `atomic_compare_exchange`) is a **single** atomic instruction that uses 3 registers to perform.

LL/SC (_load-link/store-conditional_, ``) is a **pair** of atomic instructions that use only 2 registers to perform.

So, there are obvious differences: CAS is single instruction, but uses 3 registers, when LL/SC is pair of instructions that uses 2 registers. Key differences are:
- LL/SC works faster, because single atomic instructions (_such as in CAS_) are badly pipelineable due to memory read and write on single register is impossible or possible, but with lot of complexity of structuring such CPU (_so CAS needs to increase RMW pipeline length and decrease overall performance_). LL/SC separates RMW instruction into two separate parts (_as mentioned in it's name_) that use special register - [link register](https://en.wikipedia.org/wiki/Link_register);
- LL/SC is more fault tolerant due to check if the computed value in link register is correct and only then it writes the modified value to it;
- CAS is far more easier to implement in CPU (_both in hardware and software mind_), though it sacrifice performance and some safety checks;

>In-depth overview of LL/SC work is discussed in [this](https://youtu.be/fuHwmyZXnPA) video.
