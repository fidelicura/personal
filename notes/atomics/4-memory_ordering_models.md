There are multiple ways to determine memory order (_sometimes called "model"_):
- `Relaxed` - it doesn't provide any order to two or more atomic operations, so for the compiler/CPU it is totally fine to reorder some operations (_e.g. on optimizations purpose_);
- `X` - X;
- `X` - X;
- `X` - X;
- `X` - X;
- `X` - X;
- `X` - X;
- `X` - X;
