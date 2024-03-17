There are multiple definitions of a "systems programming language", but I want to make something slightly different, something a bit lower-level.
Let me define my own programming language that may be considered as "systems".

# It has to work as abstraction over assembly language, not human language.
First of all, we both know that assembly is already a human-readable abstraction over binary code. Yep, this is true.
But, there is one thing that most of languages do today: they try to abstract out the human thoughts, not the human intentions.
Most of functional programming really tries to correlate human thoughts in human intentions via declarative code (and it works pretty well), but in systems programming we need strict understanding of computer architecture.
So we need to know our intentions and interpret them in terms of assembly-like language with ONLY abstractions that can be easily rewritten in assembly without almost any thoughts over them.
Let's look at the "for loops". They abstract over only 2 things: variables (with operations) and conditions. In assembly language, we can also represent them with the same 2 things: registers and conditional jumps (with operators).
That's good systems abstraction.

# It must improve along with new assembly instructions in pain-free way.
You may know this article "[C is not a low-level language](https://queue.acm.org/detail.cfm?id=3212479)" that says "C language is not good for PDP-11".
That's may be particularly true, because of intrinsics approach to extend functionality of modern languages to be coherent with modern CPU instructions.
It's nice approach, but in any language this approach is just a function, we cannot abstract out of them as we did with structs, for example.
Another problem with instrinsics is that we need replace implementation for unsupported intrinsics, with best support for specials of architecture.

# Semantics of architecture-specific code should be easily replaceable for other architecture.
Name of header says pretty much about. We need almost everything possible to be easily replaceable and transparent to see in result ASM.

# No built-in support for strings and other alien types.
There must be own implementation (e.g. in standard library) of strings and other data types. Language has to have only things that are available to the specified architecture.
Also, no `void` and `void *`. We can easily replace `void` with just not using it at all, and `void *` with `uma` (_unspecified memory address_). More specific, more friendly to specification implementation.

>Important detail: those statements say nothing about language complexity as it is. Language would still be quick in compiling and easily readable.
