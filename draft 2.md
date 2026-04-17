It is almost universally claimed that the best way to develop a deep understanding of calculus is to direct intense focus towards understanding limits. Since the spirit of calculus, the infinitesimal, is made formally valid with the concept of the limit, it's understandable why this opinion is so prevalent. 

And it is true that a thorough understanding of limits will definitely help a lot with deriving formulas for derivatives.

But when it comes to interpreting the rules of differential calculus and deriving the rules of integral calculus, an emphasis on the themes of bridges and mirrors is most relevant.

|                                             |      |      |
| ------------------------------------------- | ---- | ---- |
| Understanding proofs of derivative formulas |      |      |
| Interpreting differential calculus          |      |      |
| Deriving                                    |      |      |



, I think that, for the purpose of deeply understanding calculus, there is actually a much more important theme to focus on.



[bridge: chain rule]

[correspondence]



Since introductory calculus courses often rely on heuristic calculations with infinitesimals to justify formulas, students looking for a deeper understanding of the subject are universally directed towards thinking about how infinitesimal ideas are actually formalized with the concept of limits. 



This makes some sense. 

; thus, understanding limits more deeply will increase understanding of calculus.

  

no middle ground between elementary calculus that relies too much on infinitesimal heursitics and real analysis that explicates the underlying concepts. the algebra of calculus is in the middle

## The chain rule

The chain rule serves as the bridge between informal heuristic arguments involving infinitesimals and formally valid concepts that use limits, and is thus one of the most important theorems in calculus. One could argue it is even more fundamental than the "fundamental theorem of calculus"! 

Unfortunately, it is most common to state the chain rule with notation that is either intuitive but not clear ($\frac{df}{dx} = \frac{df}{dg} \frac{dg}{dx}$) or clear but not intuitive ($(f \circ g)’(x) = f’(g(x)) g’(x)$). Clear but not intuitive notation is useful, but only for the purpose of defining more intuitive notation.

In this book we phrase the chain rule with a notational convention designed to balance intuition and clarity. The convention is 
$$
\frac{df(g(x))}{dg(x)} := f’(g(x))
$$


With it, the chain rule is 
$$
\frac{df(g(x))}{dx} = \frac{df(g(x))}{dg(x)} \frac{dg(x)}{dx}
$$


The fractional nature of the notation gives intuition; the explicit specification of the inputs where $f’$ gets evaluated gives clarity.

## Exponential functions 

Every single calculus or real analysis text I have ever seen uses the [dreaded efficiency pedagogy]() to derive the core facts about exponential functions. This results in facts being presented in the exact opposite order of the one that makes sense. Facts that should be presented as "end results", like the following, are assumed without any good reason first....
$$
\exp = \ln^{-1}, \text{ where } \ln(x) = \int_1^x \frac{1}{x} dx
$$

$$
e = \lim_{n \rightarrow \infty} \Big(1 + \frac{1}{n} \Big)^n
$$

$$
e^x = \lim_{n \rightarrow \infty} \Big(1 + \frac{x}{n} \Big)^n
$$

$$
e = \sum_{n = 0}^\infty \frac{1}{n!}
$$

$$
e^x = \sum_{n = 0}^\infty \frac{x^n}{n!}
$$

And then the fact that should've been presented first,
$$
\frac{d}{dx} e^x = e^x
$$
is proved to be a logical consequence of the "end result". We present the correct approach in this text by deriving the fact that should be presented first, first.

## The fundamental theorem of calculus

Proving that FTC 1 ⟹ FTC 2 rather than FTC 2 ⟹ FTC 1. (FTC 2, the second fundamental theorem of calculus, is more intuitive than FTC 1, the first fundamental theorem of calculus).

## The inverse chain rule

The situation with the inverse chain rule is even worse than than the situation with the chain rule. In practice, the inverse chain rule is only ever stated in unclear intuitive notation. 

This book remedies the problem by introducing notation for integrals, designed to balance intuition and clarity, analogous to that introduced for derivatives. The convention is
$$
\int f(g(x)) dg(x) := \Big(\int f \Big) \circ g
$$
With it, the inverse chain rule is
$$
\int f(g(x)) \frac{dg(x)}{dx} dx = \int f(g(x)) dg(x)
$$

### Integration by substitution

**The connection between the formal theorem behind “cancelling differentials” and the common mnemonic for integration by substitution, du(x) = du(x)/dx, is explained.**

## Integral formulas

Typically, integral theorems like integration by substitution, and *especially* integration by parts, are explained to be the counterparts to derivative rules- which is good- but then the actual form of the rules is conjectured to out of the blue before being proven. 

This book straightforwardly *derives* the integral rules from the derivative rules in a memorable way, so that the actual form of a new rule is discovered in the same breath as its existence is discovered. This leads to a deep understanding of why integral rules are true and eliminates the need for memorization. If one forgets the integral formula, they can easily re-derive it.

# The perfect calculus doesn’t exist :(

**put this in another md file**

When I was a student, I thought that it would be great if there were some way to turn informal, heuristic proofs involving infinitesimals into rigorous ones that *still* involve infinitesimals.

*Nonstandard analysis* is the name of the field that provided exactly the formally valid manipulation of infinitesimals I hoped for. Unfortunately, using it requires making a pretty serious unintuitive assumption about the nature of logic[^1].

[^1]: One *cannot* assume the law of the excluded middle. One cannot assume that not(not(true)) is false.

We’re stuck with two unideal options. Either we get intuitive concepts at the cost of an unintuitive assumption about the nature of logic, or logic works as usual but we have to deal with formalism that doesn't feel like it always maps well onto intuition.

To me, changing the entire nature of logic is the worse of the two. So I guess we’re stuck with limits.

# iCloud notes

## A unifying narrative

In the usual approach to calculus:

- Formulas for derivatives are conjectured from heuristic calculations involving infinitesimals.
- Formulas for integrals are conjectured from vague gestures at their derivative formula counterparts



Conjecture-and-prove can't really be avoided for proving derivative formulas, but it certainly can for integral formulas. 



=======



[conjecture-and-prove](…) approach in the first place, they deprive the reader of the sole possible advantage of the algebraic approach over the formally-valid-infinitesimals approach, which is that, in an algebraic approach, there should be a unifying narrative tying all of the formulas together. In the conjecture-and-prove approach, the formulas seem ad-hoc.



The most elegant approach, which this book takes, is to *only* conjecture and prove the chain rule (since, as mentioned, it is the fundamental equation that serves as the translator between formalism and the intuitive notion of infinitesimals), to state it in maximally intuitive notation, and then to *derive* (not conjecture) all other formulas algebraically from that fundamental equation, including the inverse chain rule, which is also stated in maximally intuitive notation. In this approach, only *after* a theorem is derived should we pause and think about how to interpret it in terms of infinitesimals.



**Isn’t this just kind of only about the chain rule and the inverse chain rule? I make it sound like there’s five formulas or something when there’s really just three: chain rule, inverse chain rule, separable ODE.**



**Soln: it’s not just those two. See \**\*.**