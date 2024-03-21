Memory ordering is mechanism that gives an order of execution to atomic instructions.
It is needed because in "plain" (_non-atomic_) code we declare an execution with our line-by-line writing, but in case of atomic instructions it is not really possible due to multiple threads access inconsistency (_they are out-of-order_).
