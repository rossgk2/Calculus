# To do

Writing the new README.md, which details the "keys to calculus", forced me to develop a precise organization of the ways in which the standard teaching of calculus can be improved upon. I was of course aware enough of the *union* of those ways, so to speak, when I first wrote the minibook... but, as the minibook hasn't yet been updated since I published the new README.md, it does not benefit as much as it could from the new *partition* I've come to understand.

It is still very good, but it also needs some work in order for it to truly fufill the promise of "the keys to calculus". Here are the edits I intend to make when I have time:

## make sure the theme of implementing infinitesimals with limits comes through

* Remove infinitesimal notation $\frac{df(x)}{dx}, \int df(x)$ from readme thing at beginning. It's fine for GitHub readme but too much too soon for the book.
* Redo introduction of derivatives
 * Define $f'(x) := \lim_{\Delta x \rightarrow 0} \frac{\Delta f(\Delta x)}{\Delta x}$, where $\Delta f(\Delta x) := f(x + \Delta x) - f(x)$. Explicitly talk about infinitesimals in this definition. Expanding out the definition of $\Delta f(\Delta x)$, we have $f'(x) := \lim_{\Delta x \rightarrow 0} \frac{f(x + \Delta x) - f(x)}{\Delta x}$.
 * Equivalently, $f'(x) := \lim_{h \rightarrow 0} \frac{\Delta f(h)}{h}$, where $\Delta f(h) := f(x + h) - f(x)$, which is equal to $\lim_{h \rightarrow 0} \frac{f(x + h) - f(x)}{h}$.
 * Introduce the convenient notation $\frac{df(x)}{dx} := f'(x)$.
 * Remember that the derivative is defined to be a limit, *not* a ratio of infinitesimal quantities. In fact, in the limit-based version of calculus this book covers, which is the version of calculus overwhelmingly used by all of modern science and taught in schools, infinitesimals like $df(x)$ and $dx$ do not formally exist! The above says that the symbols $df(x)$ and $dx$ only take on meaning when they are combined in the notation $\frac{df(x)}{dx}$, which, again- is not a ratio of infinitesimals, but a limit. Thus, the notation  $df(x)/dx$ is just that: intuitive-looking and extremely suggestive *notation*.

    Now, even if infinitesimals don't *formally* exist, we can *think* about them, even writing down "scratch paper" arguments that make use of them at times, in order to come up with hypotheses. [...]

* Infinitesimals as the interface; limits as the implementation

* make sure $\int dx = x + C$ is talked about
  * formalism: int dx = int 1 dx, and f(x) = x is the function for which df(x)/dx = 1
  * intuition: int dx = sum of all of the infinitesimal bits of x = x
* Investigate if separable diff eqs can be presented as an algebraic property of integrands, similar to like one of the properties in a ring. This framing could make it more memorable.

## then, make sure these new changes remain compatible with discussions of the chain rule and inverse chain rule

* make sure "$df(x)$ on its own isn't formally valid" explained for derivatives and integrals in book
* change discussion of Leibniz notation in chain rule section to be more of a "recall" rather than an introduction, since it won't be first time concept is introduced
* edit derivation of inverse chain rule: "just as the chain rule justifies intuitive infinitesimal calculations in differential calculus, the inverse chain rule justifies them in integral calculus"
* make sure in chain rule and inverse chain rule, always using $g(f(x))$ and $g \circ f$ instead of $f \circ g$, even in explanation of bad standard presentation
* explain common convention to use $u$, or $u$ and $v$

## next, the fundamental theorem of calculus

* change FTC derivation to be about going from $f(b) - f(a) = \int^b_a \frac{df(x)}{dx} dx$ to $g(b) - g(a) = \int^b_a \frac{df(x)}{dx}$ whenever $g' = f'$. currently, we derive that $F(b) - F(a) = \int^b_a f(x) dx$ whenever $F' = f$, which is, while pretty intuitive, less intuitive
* introduce $|^b_a$ notation, which gives the intuitive-looking equation $\int^b_a f(x) dx = \Big( \int f(x) dx \Big)\Big|^b_a$

## misc

* "Additionally, both two-sided and one-sided" -> "Additionally, each one-sided"
* "An example of a function that satisfies this later condition is" -> "''the function $g$ defined by"

* "This notation aids intuition": this shouldn't be the first time a ratio of infinitesimals is getting mentioned!
* get rid of so much formalism around definition of Riemann sum

## very misc

Discussion of the systems of equations definition of derivatives Stewart intends in appendix. See if anywhere Stewart gives the definition “Saying ‘let y = f(x)’ is shorthand for saying ‘consider the equation `y = f(x), where x is a real number, and, in this context, dy/dx is defined to be f’(x).”

## give my favorite Taylor series derivation

* The usual derivation considers functions that can be written as power series, and computes the coefficients of that power series. I think a more elegant derivation is to assume the $n$th derivative is constant and integrate, assuming the necessary initial conditions are known as we go along; we obtain the Taylor series formula when $n \rightarrow \infty$.
