Atomics (_atomic instructions_) - are specific instructions for CPU that are **indivisible**.
Atomicity here means that this instruction is not interruptable: hardware interrupts/other threads/other processes cannot violate execution of this instructions.
So, atomic operation is operation that will be **always** executed without are interruption from other sources (_in order_).

>In Assembly, you may want to use `lock` instruction prefix, that literally says: "hey, this operation is now atomic" (_works only for read-modify-write instructions_).
