Any proposition consists of **variables**, probably, with **connective** that say some relations between variables. 
Variables are usually represented as $a$, $b$, $x$ and so on. You may also want to use $a_{1}$, $a_{2}$.
Each variable always has to be either true or false.

Connectives represent relations between variables using logical operations:
- NOT (_negation_): $p = T, \neg p = F$;
- AND (_conjunction_): $p = T, q = F, p \land q = F$;
- OR (_disjunction_): $p = T, q = F, p \lor q = T$;

There are two more (_that is considered basic_) connectives: **implication**, $p = T, q = F, p \implies q = F$ and **biconditional**, $p = T, q = F, p \iff q = F$.
Most simple way to think about implication is: we cannot obtain falsity from truth, because truth implies only truth.
To tell about biconditial, just think about it as equality: if both variables (_operands_) are $T$ or both are $F$, then connective is $T$.

Operator precedence is (_from left to right_): $\neg$, $\land$, $\lor$, $\implies$, $\iff$.
