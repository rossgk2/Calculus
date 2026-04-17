# Calculus

Calculus is about *measuring change* by thinking about the infinitely small. All of calculus relies on intuition about "infinitely small numbers", or *infinitesimals*.

**The first half of calculus is about using infinitesimals to measure the speed at which change occurs.** If we want to measure the speed at which the output of a function $f$ is changing in response to a changing input, we can consider the rate of change of $f$ at the input $x$ to be the slope of the line that the curvy $f$ vs. $x$ graph "becomes" as we "zoom in infinitely close" to the point $(x, f(x))$. From this zoomed in perspective, an infinitesimal horizontal change input of $dx$ leads to infinitesimal vertical change of $df(x)$, so the slope is $\frac{df(x)}{dx}$. This slope is called the *derivative* of $f$ at $x$. Also, the operation which sends a function to its derivative is called *differentiation*. Thus, the calculus of measuring the speed at which change occurs is called *differential calculus*.

**The second half of calculus is about using infinitesimals to compute how much total change is caused by a given rate of change.** If we want to determine how much total change has been caused by a rate of change that itself changes over a time interval $[a, b]$, we can think of the rate of change as being the aggregation of many rates of change that *don't* change over time, where each of these rates occurs over an "infinitely small" window of input values, and then add up all of the little changes that result. Since the rate $\frac{df(x)}{dx}$ occurs over an input window with infinitesimal width $dx$, the infinitesimal change contributed by each input window is $\frac{df(x)}{dx} dx$. Using an elongated S to denote "sum", the total change is the sum of all infinitesimal changes, $\int^b_a \frac{df(x)}{dx} dx$ .

And the **fundamental theorem of calculus** is simply the statement that the second half of calculus (computing quantity from change) is the inverse of the first half of calculus (converting change from quantity):
$$
f(b) - f(a) = \int^b_a \frac{df(x)}{dx} dx 
$$
It is the statement "quantity is the sum of all changes".

## Some history

In the late 1600s, this calculus of infinitesimals revolutionized humanity's understanding of the world. Infinitesimals were also an elusive concept, and, in these early days, too difficult to fully explain. One confoundingly often had to claim that the same infinitesimal quantity was somehow nonzero at some times and equal to zero at others, with the distinction between the two being decided for no reason other than convenience.

A completely valid theory of calculus was only first established in the 1800s, *after* the ideas of calculus had been in use for one hundred years! The solution was to replace each "infinitely small number" with a sequence of actual numbers that converge to a *limit* of zero.

This limit formalism for calculus took root... and is what's used today!

(And then, an approach to formally defining infinitesimals, called [nonstandard analysis](https://people.math.wisc.edu/~hkeisler/calc.html), was at last discovered in the late 1900s. Unfortunately for students who are dogmatically told by unimaginative teachers that "limits are the only way", it didn't catch on[^1].)

[^1]: This is because the concepts underlying infinitesimals in nonstandard analysis are extremely difficult, and are used almost nowhere other else by most mathematicians, while the notion of "limit" is comparatively easy, and are used in plenty of places in mathematics.

# Keys to calculus

## Key #1: the chain rule

Even if infinitesimals are not formally valid in limit-based calculus, we still use the classical infinitesimal notation $\frac{df(x)}{dx}$, just with the understanding that there is no formal meaning of $df(x)$ on its own, and no formal meaning of $dx$ on its own. And we use the classical infinitesimal notation $\int f(x) dx$, with the understanding that there is no formal meaning of $f(x) dx$ on its own.

Infinitesimals will always remain the spirit of calculus. Thus, one of the keys to understanding calculus is understanding infinitesimals.

In limit-based calculus, understanding infinitesimals entails understanding how to interpret the *chain rule*, which serves as the bridge between informal heuristic arguments involving infinitesimals and formally valid concepts that use limits, and is thus one of the most important theorems in calculus. One could argue it is even more fundamental than the "fundamental theorem of calculus"! 

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

## Key #2: exponential functions 

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

And then the fact that should've been derived first,
$$
\frac{d}{dx} e^x = e^x
$$
is proved to be a logical consequence of the "end result". In this text, we present the correct approach, actually deriving what should come first, first. Notably, we also give the full limit-based proof for this approach by adapting [a proof of Paramanand Singh](https://paramanands.blogspot.com/2014/05/theories-of-exponential-and-logarithmic-functions-part-3.html?m=0). Singh's notes are the only place I have ever found this proof.

## Key #3: the fundamental theorem of calculus

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
