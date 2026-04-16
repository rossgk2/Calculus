# Calculus

Calculus is about *measuring change* by thinking about the infinitely small. All of calculus relies on intuition about "infinitely small numbers", or *infinitesimals*.

In *differential calculus*, the concept of infinitesimals is invoked in order to measure the speed at which change occurs. If we want to measure the speed at which the output of a function $f$ is changing in response to a changing input, we can consider the rate of change of $f$ at the input $x$ to be the slope of the line that the curvy $f$ vs. $x$ graph "becomes" as we "zoom in infinitely close" to the point $(x, f(x))$. The slope of this line is the ratio of the infinitesimal vertical change $df(x)$ to the corresponding infinitesimal horizontal change $dx$; it is $\frac{df(x)}{dx}$.

In *integral calculus*, we use infinitesimals to compute how much total change is caused by a given rate of change. If we want to determine how much total change has been caused by a rate of change that itself changes over time, we can think of the rate of change as being the aggregation of many rates of change that *don't* change over time, where each of these rates occurs over an "infinitely small" window of input values, and then add up all of the little changes that result. The infinitesimal change contributed by an input window containing the input $x$ is the result of multiplying the rate of change, $f(x)$, by the infinitesimal width of the input window, $dx$; it is $f(x) dx$. Using an elongated S to denote "sum", the total change is the sum of all infinitesimal changes, $\int f(x) dx$.

# ...

Since infinitesimals are the spirit of calculus, it shouldn't be too surprising that one of the keys to understanding calculus is understanding infinitesimals. 

Infinitesimals have always been a complicated concept. On the surface level, they are extremely intuitive, and are probably why early calculus spread across the world in the first place. But after their inception, it seemed that infinitesimals were logically inconsistent. To derive results, one commonly had to claim that the same infinitesimal quantity was somehow both nonzero at some times and equal to zero at other times, with the distinction between the two being decided for no reason other than convenience.

The historical resolution to this issue was to replace each infinitesimal, a "sort-of number" thought of as being extremely close to  zero, with a *sequence* of *actual* numbers that converge to the *limit* of 0. In this *limit formalism*, we replace expressions involving $dx$ with expressions involving $\Delta x$, where $\Delta x \rightarrow 0$. Unlike infinitesimals (so far), limits have a clear definition, so the limit formalism allows us to confidently establish facts suggested by the intuition of infinitesimals, without the logical contradictions.



It turns out that it is also possible to give infinitesimals a clear definition... it's just very difficult, which is why how to do so wasn't discovered until [....]!

