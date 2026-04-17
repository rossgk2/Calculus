# Calculus

Calculus is about *measuring change* by thinking about the infinitely small. All of calculus relies on intuition about "infinitely small numbers", or *infinitesimals*.

In *differential calculus*, we use infinitesimals to measure the speed at which change occurs. If we want to measure the speed at which the output of a function $f$ is changing in response to a changing input, we can consider the rate of change of $f$ at the input $x$ to be the slope of the line that the curvy $f$ vs. $x$ graph "becomes" as we "zoom in infinitely close" to the point $(x, f(x))$. From this zoomed in perspective, an infinitesimal horizontal change input of $dx$ leads to infinitesimal vertical change of $df(x)$, so the slope is $\frac{df(x)}{dx}$.

In *integral calculus*, we use infinitesimals to compute how much total change is caused by a given rate of change. If we want to determine how much total change has been caused by a rate of change that itself changes over time, we can think of the rate of change as being the aggregation of many rates of change that *don't* change over time, where each of these rates occurs over an "infinitely small" window of input values, and then add up all of the little changes that result. Since the rate $f(x)$ occurs over an input window with infinitesimal width $dx$, the infinitesimal change contributed by each input window is $f(x) dx$. Using an elongated S to denote "sum", the total change is the sum of all infinitesimal changes, $\int f(x) dx$.

## Some history

In the late 1600s, this calculus of infinitesimals revolutionized humanity's understanding of the world. Infinitesimals were also an elusive concept, and, in these early days, too difficult to fully explain. One confoundingly often had to claim that the same infinitesimal quantity was somehow nonzero at some times and equal to zero at others, with the distinction between the two being decided for no reason other than convenience.

A completely valid theory of calculus was only first established in the 1800s, *after* the ideas of calculus had been in use for one hundred years! The solution was to replace each "infinitely small number" with a sequence of actual numbers that converge to a *limit* of zero.

This limit formalism for calculus took root... and is what's used today!

And then, an approach to formally defining infinitesimals, called [nonstandard analysis](https://people.math.wisc.edu/~hkeisler/calc.html), was at last discovered in the late 1900s. Unfortunately for students who are dogmatically told by unimaginative teachers that "limits are the only way", it didn't catch on[^1]. 

[^1]: This is because the concepts underlying infinitesimals in nonstandard analysis are extremely difficult, and are used almost nowhere other else by most mathematicians, while the notion of "limit" is comparatively easy, and are used in plenty of places in mathematics.

## The spirit of calculus

While they may not be formally valid in limit-based calculus, infinitesimals will always remain the spirit of calculus. Thus, one of the keys to understanding calculus is understanding infinitesimals.

We still use the classical notation $\frac{df(x)}{dx}$, just with the understanding that there is no formal meaning of $df(x)$ on its own, and no formal meaning of $dx$ on its own. And we use the classical notation $\int f(x) dx$, with the understanding that there is no formal meaning of $f(x) dx$ on its own.
