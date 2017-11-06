---
title: What is a one-sided limits?
date: 2017-11-02 10:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics, Calculus]
mathjax: true
copyright: true
top: 100
---

# What is a one-sided limits?

## Introduction
### One-sided Limits and Two-sided Limits
People are familiar with two sided limits, shown below.

$$
\lim\limits_{x->a} f(x) = L
\tag{$1$}
$$

But here, we are going to introduce one-sided limits and shown the correlative between them.
The expression of one-sided limits are shown below.
$$
\lim\limits_{x->a^+} f(x) = L
\tag{$2$}
$$
$$
\lim\limits_{x->a^-} f(x) = L
\tag{$3$}
$$

The different is the superscript of a, which means the direction of approaching. E.g., the formula (2) means that $f(x)$ is close to $L$, as the provided $x$ is approach $a$ from the right hand side.

And the same as formula (3), which means that $f(x)$ is close to $L$, as the provided $x$ is approach $a$ from the left hand side.


<br>
<br>

## Graph
See the graph down there.

![one-sided limits](https://raw.githubusercontent.com/JasonDean-1/MarkdownPhoto/b285f3c9bf4387518c42780c3f3d615de0b78a13/__Blog/__Personal%20Understanding/Mathematics/Calculus/Introduction%20of%20Calculus/images/1.%20one-sided%20limit%20graph.jpg)
<center> 1. one-sided limits </center>
<br>

Compare graph with formula (2) and (3). You can say that $f(x)$ is getting close to 1 if $x$ approach 2 from the left-hand side. And you can also say that $f(x)$ is getting close to 3 if $x$ approach 2 from the right-hand side.



<br>
<br>
## Correlation between One-sided Limits and Two-sided Limits
When one-sided limits from both sides are equal to the same value, we could simply use two-sided limits to express. Whereas, the one-sided limits is not exactly the same, we have use one-sided limits.


E.g.,

$$
if
\left\{
\begin{align}
\lim\limits_{x->a^+} f(x) = L \\
\lim\limits_{x->a^-} f(x) = L
\end{align}
\right.
\Longrightarrow
\lim\limits_{x->a} f(x) = L
$$

$$
if
\left\{
\begin{align}
\lim\limits_{x->a^+} f(x) = L_1 \\
\lim\limits_{x->a^-} f(x) = L_2
\end{align}
\right.
\text{($L_1 \neq L_2$)}
\nRightarrow
\lim\limits_{x->a} f(x) = L
$$

# Summary
1. One-sided limits is not equal to two-sided limits.
2. If both sides of one-sided limits have the same value, we could make it two-sided limits.

# Reference
[1] Introduction of Calculus in Coursera by Jim Fowler


<br>
<br>
------------------------------------------