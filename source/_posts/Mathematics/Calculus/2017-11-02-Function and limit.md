---
title: Function and Limit
date: 2017-11-02 08:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics, Calculus]
mathjax: true
copyright: true
top: 100
---

# Function and Limit

## 1. Function
### 1) What is a Function?
In mathematics, a function is a relation between a set of inputs and a set of permissible outputs with the property that each input is related to exactly one output.[1]

Think about a water dispenser, on the one side, we have a busket full of water, which inputs those water into the water dispenser fast. On the other side, the tag drains the water with much small speed. In this case, the water dispenser is somewhat a function of the speed of water. The input is fast, and the output is relatively slower.

We usually call the input as $x$, the function as $f$, and the output of $f$ corresponding to an input $x$ is denoted by $f(x)$ (read "f of x").[1]


### 2) What does a Function do?
A function map input (each number in its domain) to one and only output.

For example, $f(x) = x + 1 \text( $x ∈ {\rm I\!R}$)$

| x   | f(x) |
| --- | ---- |
| 1   | 2    |
| 2   | 3    |
| 3   | 4    |
| 5   | 6    |
| ... | ...  |
| x   | x+1  |






## 2. Limit
### 1) What is a Limit?
A limit is the function with a variable approach some value. Limits are essential to calculus (and mathematical analysis in general) and are used to define continuity, derivatives, and integrals.[2].

### 2) What is one-sided limit?

In short, one-sided limit is the limition with one value approach from one side, and different will may have way different result of the formula because, the value is always bigger/small than the other value.

When one-sided limits from both sides are equal to the same value, we could simply use two-sided limits to express. Whereas, the one-sided limits is not exactly the same, we have use one-sided limits.

See more at this blog [What is one-sided limit](../2017-11-02-What is a one-sided limit/)

### 3) Some Rules of Limits

> There are basically 4 types of limits

1. $\frac{0}{0}(\frac{\infty}{\infty})$
2. $\infty \times 0$
3. Exponential  e.g., $1^\infty$, $0^0$, $\infty^0$
4. $\infty - \infty$


Note that, Tylor expansion could deal with all kinds of types.

#### ① $\frac{0}{0}(\frac{\infty}{\infty})$

Use l'Hôpital's rule to get the derivative of nominator and demoninator. That is $\frac{0'}{0'}(\frac{\infty'}{\infty'})$


#### ② $\infty \times 0$

Transform to type ①, and then use the method offered in type ①. For example, $\infty \times 0 \Rightarrow \frac{\frac{0}{1}}{\infty}$ or $\frac{\frac{\infty}{1}}{0}$

#### ③ Exponential

Transform exponential to logarithm, then you get type ②。Using this rule $u^v = e^(vlnu)$ .For example, $1^\infty \Rightarrow e^{\infty ln1}$, $0^\infty \Rightarrow e^{0ln0}$, $1^\infty \Rightarrow e^{0 ln\infty}$

#### ④ $\infty - \infty$

There are several detail for this type. But using Tylor expansion is the most powerful way for this type. Because Tylor expansion is an equation, so that you don't need to worry about the other complicate prerequisite.





# Summary

# Reference
[1] Wikipedia - Function (mathematics) [https://en.wikipedia.org/wiki/Function_(mathematics)](https://en.wikipedia.org/wiki/Function_(mathematics))

[2] Wikipedia - Limit (mathematics) [https://en.wikipedia.org/wiki/Limit_(mathematics)](https://en.wikipedia.org/wiki/Limit_(mathematics))
