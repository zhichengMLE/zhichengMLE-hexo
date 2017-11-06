---
title: Tylor Expansion Example
date: 2017-11-04 15:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics, Calculus]
mathjax: true
copyright: true
top: 100
---

# Tylor Expansion Example

> Tylor Expansion is a powerful tool to deal with limits. Some examples are showed below.

## Prerequisite

See more about how to calculate derivative at this link and differential rules at this link.

## Definition[1]

$$
\begin{align}
\lim\limits_{x \rightarrow a} f(x)
&= \frac{f\left( a \right)}{ 0 !}\left( x - a \right) ^ 0 + \frac{f'\left( a \right)}{ 1 !}\left( x - a \right) ^ 1 + \frac{f''\left( a \right)}{ 2 !}\left( x - a \right) ^ 2  + \cdots + \frac{f^{(n)}\left( a \right)}{ n !}\left( x - a \right) ^ n \\
&= \sum\limits_{n=0}^{\infty} \frac{f^{(n)}\left( a \right)}{ n !}\left( x - a \right) ^ n
\end{align}
$$


When a = 0, the formula is showed below.
$$
\begin{align}
\lim\limits_{x \rightarrow a} f(x)
&= \frac{f\left( a \right)}{ 0 !}x^0 + \frac{f'\left( a \right)}{ 1 !}x^1 + \frac{f''\left( a \right)}{ 2 !}x^2  + \cdots + \frac{f^{(n)}\left( a \right)}{ n !}x^n \\
&= \sum\limits_{n=0}^{\infty} \frac{f^{(n)}\left( a \right)}{ n !}x^n
\end{align}
$$


## Examples
### 1. Example 1

$f(x) = e^x$
$$
\begin{align}
\lim\limits_{x \rightarrow 0} f(x)
&= \frac{f\left( a \right)}{ 0 !}x^0 + \frac{f'\left( a \right)}{ 1 !}x^1 + \frac{f''\left( a \right)}{ 2 !}x^2  + \cdots + \frac{f^{(n)}\left( a \right)}{ n !}x^n \\
&= \frac{e^0}{ 0 !}x^0 + \frac{e^0}{ 1 !}x^1 + \frac{e^0}{ 2 !}x^2  + \cdots + \frac{e^0}{ n !}x^n \\
&= \frac{x^0}{ 0 !} + \frac{x^1}{ 1 !} + \frac{x^2}{ 2 !}  + \cdots + \frac{x^n}{ n !} \\
\end{align}
$$


### 1. Example 2

$f(x) = \sin x$
$$
\begin{align}
\lim\limits_{x \rightarrow 0} f(x)
&= \frac{f\left( a \right)}{ 0 !}x^0 + \frac{f'\left( a \right)}{ 1 !}x^1 + \frac{f''\left( a \right)}{ 2 !}x^2  + \cdots + \frac{f^{(n)}\left( a \right)}{ n !}x^n \\
&= \frac{\sin 0}{ 0 !}x^0 + \frac{\cos 0}{ 1 !}x^1 + \frac{-\sin 0}{ 2 !}x^2  + \cdots\\
&= \frac{0}{ 0 !} + \frac{1}{ 1 !}x^1 + \frac{0}{ 2 !}  + \cdots + \frac{x^n}{ n !}  + \cdots\\
&= \frac{x^1}{ 1 !} - \frac{x^3}{ 3 !} + \frac{x^5}{ 5 !} - \frac{x^7}{ 7 !} + \cdots \\
\end{align}
$$



## Reference
[1] [wikipedia-Taylor series](https://en.wikipedia.org/wiki/Taylor_series)
