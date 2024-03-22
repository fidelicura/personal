There are multiple ways to determine memory order (_sometimes called "model"_) for two or more operations:
- `Relaxed` (`memory_order_relaxed`) - it doesn't provide any order, so for the compiler/CPU it is totally fine to reorder operations (_e.g. on optimizations purpose_);
- `Sequentially Consistent` (`memory_order_seq_cst`) - it does provide order in way like we are get used to it as in default sequential execution, so compiler/CPU is not allowed to reorder operations at all;
- `X` - X;
- `X` - X;
- `X` - X;
- `X` - X;
- `X` - X;
- `X` - X;
