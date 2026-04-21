# Calculus

Calculus is about *measuring change* by thinking about the infinitely small. All of calculus relies on intuition about "infinitely small numbers", or *infinitesimals*.

**The first half of calculus is about using infinitesimals to compute change from quantity.** If we want to measure the rate at which the output of a function $f$ is changing in response to a changing input, *instantaneously* at a particular input $x$, we compare the ratio of an infinitesimal change in output, $df(x)$, to the infinitesimal change in input, $dx$, that caused it, and compute the ratio $\frac{df(x)}{dx}$. Geometrically, this ratio is the slope of the line passing through $(x, f(x))$.

(The ratio $\frac{df(x)}{dx}$ is called the *derivative* of $f$ at $x$. Sometimes, it is denoted as $f'$. Computing the derivative of $f$ is called *differentiating $f$*. Thus, the first half of calculus is known as *differential calculus*.)

**The second half of calculus is about using infinitesimals to compute quantity from change.** If we want to determine how much total change has been caused by a rate of change $f'$ that itself changes over an input window $[a, b]$, we apply the *fundamental theorem of calculus*. That is, we think of the rate of change as being the aggregation of many rates of change that *don't* change over time, where each of these rates occurs over an infinitesimally wide window of inputs, and then compute the sum of all the little changes $df(x_1), ..., df(x_i), ...$ that result. Geometrically, this sum is the area between $f$ and the $x$-axis, and between the lines $x = a$ and $x = b$.

(The mentioned sum is denoted by $\int^b_a df(x)$, is equal to $\int^b_a \frac{df(x)}{dx} dx = \int^b_a f'(x) dx$, and is called the *integral* of $f'$ over $[a, b]$. Computing the integral of $f'$ is called *integrating* $f'$. Thus, the second half of calculus is known as *integral calculus*.)

**The true power of infinitesimals is that they provides a means to derive convenient formulas for these calculations, so that it is not necessary to tediously compute ratios or sums.** If there were no such formulas, then the fundamental theorem of calculus would be basically useless! But, if one knows the formulas, they merely "calculate", and apply the formulas. Thus the name *calculus*.

## Some history

In the late 1600s, even as the calculus of infinitesimals transformed humanity's understanding of the world, a fully satisfactory understanding of the revolutionary new infinitesimals was elusive. One confoundingly often had to claim that the same infinitesimal quantity was somehow nonzero at some times and equal to zero at others, with the distinction between the two being decided for no reason other than convenience.

A completely valid theory of calculus was only first established in the 1800s, *after* the ideas of calculus had been in use for more than a hundred years! The solution was to replace each infinitesimal, which was an "infinitely small number", with a sequence of *actual* numbers that converge to a *limit* of zero.

This limit formalism for calculus took root... and is what's used today!

(And then, an approach to formally defining infinitesimals, called [nonstandard analysis](https://people.math.wisc.edu/~hkeisler/calc.html), was at last discovered in the late 1900s. Unfortunately for students who are dogmatically told by unimaginative teachers that "limits are the only way", it didn't catch on[^1].)

[^1]: This is because the concepts underlying infinitesimals in nonstandard analysis are extremely difficult, and are used almost nowhere other in mainstream math and physics, while the notion of "limit" is comparatively easy, and is used in plenty of places in math and physics.

# Keys to calculus

There are a couple of keys to understanding calculus that are underemphasized, and at times butchered, in standard textbooks. This book is devoted to explaining them well, in-depth. 

## Key #1: the chain rule

Even if infinitesimals are not formally valid in limit-based calculus, it is extremely common to informally *think* about them. Infinitesimals will always remain the spirit of calculus.

Thus, understanding calculus requires understanding infinitesimals. And in limit-based differential calculus, understanding infinitesimals requires understanding the *chain rule*. This is because the *chain rule* serves as the bridge between informal heuristic arguments involving infinitesimals and formally valid concepts that use limits.

Because the chain rule underpins the understanding of infinitesimals, one could argue that it is even more fundamental than the fundamental theorem of calculus! 

Unfortunately, standard texts state the chain rule with notation that is either intuitive but not clear ($\frac{df}{dx} = \frac{df}{dg} \frac{dg}{dx}$) or clear but not intuitive ($(f \circ g)’(x) = f’(g(x)) g’(x)$). Clear but not intuitive notation is useful, but only for the purpose of defining more intuitive notation.

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

Every single calculus text[^2] I have ever seen uses the [dreaded efficiency pedagogy]() to derive the core facts about exponential and logarithmic functions. This results in facts being presented in the exact opposite order of the one that makes sense. Facts that should be presented as "end results", like the following, are assumed without any good reason first....
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
is proved to be a logical consequence of the "end result". In this text, we present the correct approach, actually deriving what should come first, first. Notably, we also give the full limit-based proof for this approach in the appendix by adapting [a proof of Paramanand Singh](https://paramanands.blogspot.com/2014/05/theories-of-exponential-and-logarithmic-functions-part-3.html?m=0) for those who want to see the complete justification.

[^2]: And even every single real analysis text. "Real analysis" just means "limit-based calculus, but where absolutely everything is proved".

## Key #3: the fundamental theorem of calculus

The fundamental theorem of calculus expresses precisely in what sense the operations of differentiation and integration are inverses. Since there are two orders in which one could perform the two operations, there are two parts to the theorem:

* Part I describes the sense in which one is allowed to integrate and then differentiate.
* Part II describes the sense in which one is allowed to differentiate and then integrate.

Unfortunately, whoever decided the ordering of the two parts made a mistake. They should swapped the labels, so that Part II is Part I and Part II is Part II! This is because it is much more intuitive to think about computing quantity from change, which is what Part II is about, than it is to think about "computing change in quantity, where that quantity is accumulated change", which is what Part I is about.

Standard textbooks naively follow the ordering of the two parts. With little motivation, they establish Part I, and use it to prove Part II.

This book takes the more natural approach. We notice Part II. Part I follows as an easy corollary afterwards. 

## Key #4: the inverse chain rule

Similarly to how understanding infinitesimals in *differential* limit-based calculus requires understanding the *chain rule*, understanding infinitesimals in *integral* limit-based calculus requires understanding the *inverse chain rule*. 

Unfortunately, the presentation of the inverse chain rule in standard texts is even worse than than the situation with the chain rule. Standard texts state the rule in clear but not intuitive notation, but demonstrate it intuitive but not clear notation, not taking any time to explain how the two notations match up to one another. This book does take that time, and further remedies the problem by introducing notation for integrals, designed to balance intuition and clarity, analogous to that introduced for derivatives. The convention is
$$
\int f(g(x)) dg(x) := \Big(\int f \Big) \circ g
$$
With it, the inverse chain rule is
$$
\int f(g(x)) \frac{dg(x)}{dx} dx = \int f(g(x)) dg(x)
$$

## Key #5: deriving integral formulas

Typically, integral theorems like integration by substitution, and *especially* integration by parts, are explained to be the counterparts to derivative rules- which is good- but then the actual form of the rules is conjectured to out of the blue before being proven. 

This book straightforwardly *derives* the integral rules from the derivative rules in a memorable way, so that the actual form of a new rule is discovered in the same breath as its existence is discovered. This leads to a deep understanding of why integral rules are true and eliminates the need for memorization. If one forgets the integral formula, they can easily re-derive it.
