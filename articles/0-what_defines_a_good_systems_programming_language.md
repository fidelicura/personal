There are multiple definitions of a "systems programming language", but I want to make something slightly different, something a bit lower-level.
Let me define my own programming language that may be considered as "systems".

# It has to work as abstraction over assembly language, not human language.
First of all, we both know that assembly is already a human-readable abstraction over binary code. Yep, this is true.
But, there is one thing that most of languages do today: they try to abstract out the human thoughts, not the human intentions.
Most of functional programming really tries to correlate human thoughts in human intentions via declarative code (and it works pretty well), but in systems programming we need strict understanding of computer architecture.
So we need to know our intentions and interpret them in terms of assembly-like language with ONLY abstractions that can be easily rewritten in assembly without almost any thoughts over them.
Let's look at the "for loops". They abstract over only 2 things: variables (with operations) and conditions. In assembly language, we can also represent them with the same 2 things: registers and conditional jumps (with operators).
