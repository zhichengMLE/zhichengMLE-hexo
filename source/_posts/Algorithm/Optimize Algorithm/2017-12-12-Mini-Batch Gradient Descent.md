---
title:  Mini-Batch Gradient Descent
date: 2017-12-12 13:23:19
categories: [Machine-Learning-Algorithm]
tags: [Machine-Learning-Algorithm]
mathjax: true
copyright: true
top: 100
---


# Mini-Batch Gradient Descent

## 1. What is Mini-Batch Gradient Descent?

Mini-Batch Gradient Descent is an algorithm between the Batch Gradient Descent and Stochastic Gradient Descent. Concretly, this use some(not one or all) examples(M) for each iteration.


## 2. Compute Effort

The compute time of this algorithm depends on the examples. It not stable, but the worst case is like Batch Gradient Descent: O($N^2$)

The table below shows the different among these there Gradient Descent

| Batch Gradient Descent          | Mini-Batch Gradient Descent | Stochastic Gradient Descent       |
| ------------------------------- | --------------------------- | --------------------------------- |
| use 1 example in each iteration | use some examples           | use all example in each iteration |
| relative compute loose          | somewhat in between         | relative compute intensive        |



### 3. Gradient Descent Formula

For all $\theta_i$
$$
\begin{align}
\frac{\partial J_\theta}{\partial \theta_i} = \frac{1}{m} \sum\limits_{i=1}^{M} \left[ h_{\theta}(x_i) - y_i \right] \cdot (x_i)
\end{align}
$$

> E.g.,
two parameters $\theta_0, \theta_1$ --> $h_{\theta}(x) = \theta_0 + \theta_1 x_1$

For i = 0 :
$$
\frac{\partial J_\theta}{\partial \theta_0} = \frac{1}{m} \sum\limits_{i=1}^{M} \left[ h_{\theta}(x_i) - y_i \right] \cdot (x_0)
$$


For i = 1:
$$
\frac{\partial J_\theta}{\partial \theta_1} = \frac{1}{m} \sum\limits_{i=1}^{M} \left[ h_{\theta}(x_i) - y_i \right]\cdot (x_1)
$$


Note that the datasets need to be shuffled before iteration.
