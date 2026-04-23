# Calculus

Calculus is about *measuring change* by thinking about the infinitely small. All of calculus relies on intuition about "infinitely small numbers", or *infinitesimals*.

**The first half of calculus is about using infinitesimals to compute *change* from *quantity*.** If we want to measure the rate at which the output of a function $f$ is changing in response to a changing input, *instantaneously* at a particular input $x$, we compare the ratio of an infinitesimal change in output, $df(x)$, to the infinitesimal change in input, $dx$, that caused it, and compute the ratio $\frac{df(x)}{dx}$. Geometrically, this ratio is the slope of the tangent line passing through $(x, f(x))$.

(The ratio $\frac{df(x)}{dx}$ is called the *derivative* of $f$ at $x$. Sometimes, it is denoted as $f\prime$. Computing the derivative of $f$ is called *differentiating* $f$. Thus, the first half of calculus is known as *differential calculus*.)

**The second half of calculus is about using infinitesimals to compute *quantity* from *change*.** If we want to determine how much total change has been caused by a rate of change $f'$ that itself changes over an input window $[a, b]$, we apply the *fundamental theorem of calculus*. That is, we think of the rate of change as being the aggregation of many rates of change that *don't* change over time, where each of these rates occurs over an infinitesimally wide window of inputs, and then compute the sum of all the little changes $df(x_1), ..., df(x_i), ...$ that result. Geometrically, this sum is the area between $f$ and the $x$-axis, and between the lines $x = a$ and $x = b$.

(The mentioned sum is denoted by $\int^b_a df(x)$. It is equal to $\int^b_a \frac{df(x)}{dx} dx = \int^b_a f\prime(x) dx$, and is called the *integral* of $f\prime$ over $[a, b]$. Computing the integral of $f\prime$ is called *integrating* $f\prime$. Thus, the second half of calculus is known as *integral calculus*.)

**The true power of infinitesimals is that they provide a means to derive convenient formulas for these calculations, so that it is not necessary to tediously compute ratios or sums.** If there were no such formulas, then the fundamental theorem of calculus would be basically useless! But, if one knows the formulas, they merely "calculate", and apply the formulas. Thus the name *calculus*.

## Some history

In the late 1600s, even as this calculus transformed humanity's understanding of the world, a fully satisfactory understanding of the infinitesimals underpinning it was elusive. In order to derive results, one confoundingly often had to claim that the same infinitesimal quantity was somehow nonzero at some times and equal to zero at others, with the distinction between the two being decided for no reason other than convenience.

A completely valid theory of calculus was only first established in the 1800s, *after* the ideas of calculus had been in use for more than a hundred years! The solution was to replace each infinitesimal, which was an "infinitely small number", with a sequence of *actual* numbers that converge to a *limit* of zero.

This limit formalism for calculus took root... and is what's used today!

(And then, an approach to formally defining infinitesimals, called [nonstandard analysis](https://people.math.wisc.edu/~hkeisler/calc.html), was at last discovered in the late 1900s. Unfortunately for students who are dogmatically told by unimaginative teachers that "limits are the only way", it didn't catch on[^1].)

[^1]: This is because the concepts underlying infinitesimals in nonstandard analysis are extremely difficult, and are used almost nowhere other in mainstream math and physics, while the notion of "limit" is comparatively easy, and is used in plenty of places in math and physics.

# Keys to calculus

While standard textbooks explain a good amount of modern calculus[^2] quite well, there are also several keys to comprehensively understanding it that are underemphasized... and, at times, totally butchered. This book is devoted to explaining those keys in-depth. 

## Key #1: infinitesimals in limit-based differential calculus

Infinitesimals may not be valid in limit-based calculus, but it is still extremely common to informally *think* about them. Infinitesimals will always remain the spirit of calculus.

Thus, understanding calculus requires understanding infinitesimals. And in limit-based differential calculus, understanding infinitesimals requires understanding the *chain rule*. This is because the *chain rule* serves as the bridge between informal heuristic arguments involving infinitesimals and formally valid concepts that use limits.

Because the chain rule underpins the understanding of infinitesimals, one could argue that it is even more fundamental than the fundamental theorem of calculus! 

Standard texts do just fine in stating the "explicit, but less intuitive" version of the chain rule. But when it comes to the "intuitive, but less explicit" version, the totally botch things, giving this unintelligible presentation:

$$
\text{``If $y = g(u)$ and $u = f(x)$ are differentiable functions, then } \frac{dy}{dx} = \frac{dy}{du} \frac{du}{dx}\text{''}
$$

There are several contradictions inherent in this, the most striking being that the expression $\frac{dg(f(x))}{f(x)}$ is not given any formal meaning elsewhere in a standard text even though it is a concept that clearly follows from the premises (by substituting $y = g(u)$ and $u = f(x)$ into the expression $\frac{dy}{dx}$).

In this book, we actually give concrete meaning to this notion, defining

$$
\frac{dg(f(x))}{df(x)} := g\prime(f(x))
$$

This leads to a much clearer statement of the "intuitive, but less explicit" version of the chain rule that avoids all of the problems with the standard presentation:

$$
\frac{dg(f(x))}{dx} = \frac{dg(f(x))}{df(x)} \frac{df(x)}{dx}
$$

## Key #2: exponential functions 

Every single calculus text[^2] I have ever seen uses the [dreaded efficiency pedagogy]() to derive the core facts about exponential and logarithmic functions. This results in facts being presented in the exact opposite order of the one that makes sense. Facts that should be presented as "end results", like the following, are assumed without any good reason first...

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

### The two parts of the theorem

The fundamental theorem of calculus expresses precisely in what sense the operations of differentiation and integration are inverses. Since there are two orders in which one could perform the two operations, there are two parts to the theorem:

* Part I describes the sense in which one is allowed to integrate and then differentiate.
* Part II describes the sense in which one is allowed to differentiate and then integrate.

Unfortunately, whoever decided the ordering of the two parts made a mistake. They should swapped the labels, so that Part II is Part I and Part II is Part II! This is because it is much more intuitive to think about computing quantity from change, which is what Part II is about, than it is to think about "computing change in quantity, where that quantity is accumulated change", which is what Part I is about.

Standard textbooks naively follow the ordering of the two parts. With little motivation, they establish Part I, and use it to prove Part II.

This book takes the more natural approach. We notice Part II. Part I follows as an easy corollary afterwards.

### Indefinite integrals

Only after one knows that every antiderivative is a definite integral does it make sense to denote antiderivatives with a symbol suggestive of definite integrals. Thus, unlike standard texts, which often muddle this detail and thus trick students into thinking that $\int^b_a f(x) dx = \Big( \int f(x) dx \Big)\Big|^b_a$ is "obvious" when they don't really understand it, we take care to only define the notion of an indefinite integral *after* Part I of the fundamental theorem.

## Key #4: infinitesimals in limit-based integral calculus (the inverse chain rule)

Similarly to how understanding infinitesimals in limit-based *differential* calculus requires understanding the *chain rule*, understanding infinitesimals in limit-base *integral* calculus requires understanding the *inverse chain rule*. 

The presentation of the inverse chain rule in standard texts is even worse than the situation with the chain rule. At least with the chain rule, standard texts give an "explicit, but less intuitive" presentation for students to fall back upon when the botched "intuitive, but less explicit" version doesn't make any sense. With the inverse chain rule, *no* "explicit, but less intuitive" version is given. Students are left to rely on the "intuitive, but less explicit" version of the inverse chain rule, botched in an analagous way to the "intuitive, but less explicit" version of the chain rule:

$$
\text{``If $y = g(u)$ and $u = f(x)$ are differentiable functions, then } \int g'(f(x)) f'(x) dx = \int g(u) du \text{''}
$$

This book remedies this problem. First, we give the "explicit, but less intuitive" version: 

$$
\int (g \circ f) f' = \Big(\int g \Big) \circ f
$$

Then we introduce notation for integrals analogous to that introduced for derivatives.

$$
\int g(f(x)) df(x) := \Big(\int g \Big) \circ f
$$

Just as was the case with derivatives, this notation leads to a much clearer "intuitive, but less explicit" version of the inverse chain rule:

$$
\int g(f(x)) \frac{df(x)}{dx} dx = \int g(f(x)) df(x)
$$

## Key #5: deriving integral formulas

Typically, integral theorems like integration by substitution, and *especially* integration by parts, are explained to be the counterparts to derivative rules- which is good- but then the actual form of each rules is conjectured from out of the blue before being proven	. 

This book straightforwardly *derives* the integral rules from the derivative rules in a memorable way, so that the actual form of a new rule is discovered in the same breath as its existence is discovered. This leads to a deep understanding of why integral rules are true and eliminates the need for memorization, so that if an integral formula is forgotten, it can easily be derived in a minute or two.
