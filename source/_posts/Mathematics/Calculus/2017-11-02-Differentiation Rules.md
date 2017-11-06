---
title: Differentiation Rules
date: 2017-11-02 12:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics, Calculus]
mathjax: true
copyright: true
top: 100
---

# Differentiation Rules

## 1. The Sum Rule

In calculus, the sum rule in differentiation is a method of finding the derivative of a function that is the sum of two other functions for which derivatives exist.[1]

Given: $h\left( x \right) = f\left( x \right) + g\left( x \right)$

Proofs: $h'\left( x \right) = f'\left( x \right) + g'\left( x \right)$

$$
\begin{align}
h'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ h\left(x + \Delta x\right) - h \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right) + g\left(x + \Delta x\right) - f \left( x \right) - g \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right)  - f \left( x \right) + g\left(x + \Delta x\right) - g \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right)  - f \left( x \right) }{\Delta x} + \frac{ g\left(x + \Delta x\right)  - g \left( x \right) }{\Delta x} \\
&= f'\left( x \right) + g'\left( x \right)
\end{align}
$$

## 2. The Product Rule

In calculus, the product rule is a formula used to find the derivatives of products of two or more functions.[2]

Given: $h\left( x \right) = f\left( x \right) \cdot g\left( x \right)$

Proofs: $h'\left( x \right) = f'\left( x \right)g\left( x \right) + f\left( x \right)g'\left( x \right)$

$$
\begin{align}
h'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ h\left(x + \Delta x\right) - h \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right) \cdot g\left(x + \Delta x\right) - f \left( x \right) \cdot g \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right) \cdot g\left(x + \Delta x\right) - \left[ f\left(x \right) \cdot g\left(x + \Delta x \right) + f\left(x \right) \cdot g\left(x + \Delta x \right)\right] - f \left( x \right) \cdot g \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \left[f\left(x + \Delta x\right) -f\left( x \right)\right] \cdot g\left(x + \Delta x\right) +  f\left( x \right) \cdot \left[g\left(x + \Delta x\right) -g\left( x \right)\right] }{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right) -f\left( x \right)}{\Delta x} \cdot \lim\limits_{\Delta x \rightarrow0} g\left(x + \Delta x\right) + \lim\limits_{\Delta x \rightarrow0} f\left(x + \Delta x\right)  \cdot \lim\limits_{\Delta x \rightarrow0} \frac{ g\left(x + \Delta x\right) -g\left( x \right)}{\Delta x} \\
&= f'\left( x \right)g\left( x \right) + f\left( x \right)g'\left( x \right)
\end{align}
$$


## 3. The Quotient Rule

In calculus, the quotient rule is a method of finding the derivative of a function that is the ratio of two differentiable functions.[3]

Given: $h\left( x \right) = \frac {f\left( x \right)} {g\left( x \right)}$

Proofs: $h'\left( x \right) = \frac{f'\left( x \right)g\left( x \right) -f\left( x \right) g'\left( x \right)}{g\left( x \right)^2}$

$$
\begin{align}
h'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ h\left(x + \Delta x\right) - h \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{\frac {f\left( x + \Delta x \right)} {g\left( x + \Delta x \right)} - \frac{f\left( x \right)}{g\left( x \right)}}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{f\left( x + \Delta x \right) g\left( x \right) - f\left( x \right)g\left( x + \Delta x \right)}{\Delta x \cdot g\left( x \right)g\left( x + \Delta x \right)}\\
&= \lim\limits_{\Delta x \rightarrow0} \frac{f\left( x + \Delta x \right) g\left( x \right) - f\left( x \right)g\left( x + \Delta x \right)}{\Delta x}  \cdot \frac{1}{g\left( x \right)g\left( x + \Delta x \right)}\\
&= \left[\lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right) -f\left( x \right)}{\Delta x} \cdot \lim\limits_{\Delta x \rightarrow0} g\left(x\right) - \lim\limits_{\Delta x \rightarrow0} f\left(x \right)  \cdot \lim\limits_{\Delta x \rightarrow0} \frac{ g\left(x + \Delta x\right) -g\left( x \right)}{\Delta x}\right] \cdot \frac{1}{g\left( x \right)^2}\\
&= \frac{f'\left( x \right)g\left( x \right) -f\left( x \right) g'\left( x \right)}{g\left( x \right)^2}
\end{align}
$$

## Reference
[1] [Wikipedia-Sum rule in differentiation](https://en.wikipedia.org/wiki/Sum_rule_in_differentiation)

[2] [Wikipedia-Product rule](https://en.wikipedia.org/wiki/Product_rule)

[3] [Wikipedia-Quotient_rule](https://en.wikipedia.org/wiki/Quotient_rule)


<br>
<br>
------------------------------------------