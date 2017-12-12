---
title: Maximum Likelihood Estimation
date: 2017-12-12 21:23:19
categories: [Machine-Learning-Algorithm]
tags: [Machine-Learning-Algorithm]
mathjax: true
copyright: true
top: 100
---

# Maximum Likelihood Estimation

## 1. What is Maximum Likelihood Estimation?

Maximum likelihood estimation (MLE) is a methods which estimats the parameters of a statistical model given data, by exploiting the parameter that maximize the likelihood.[1]

So by giving specific observation, MLE is a way to figure out the value to make the probability maximum.

### 1.1. What is Likelihood?

Given an independent and identically distributed sample, we could get the probablity, which is shown as formula (1).

$$
\begin{align}
f(x_1,x_2,...,x_n|\theta)
&= f(x_1|\theta) \times f(x_2|\theta) \times ... \times f(x_n|\theta) \\
&= \prod\limits_{i=1}^{n}f(x_i|\theta)
\end{align}
\tag{1}
$$

This could also be written as formula (2).

$$
L(\theta;x_1,x_2,...,x_n) = f(x_1,x_2,...,x_n|\theta) = \prod\limits_{i=1}^{n}f(x_i|\theta)
\tag{2}
$$

### 1.2. What is Log Likelihood?

For more convenient, we usually use log likelihood which applys natural logarithm onto likelihood. The Logarithm product rule is $\log(a \cdot b) = log(a) + log(b)$ [2] By doing that, the product turns to the sum problem.

$$
\begin{align}
\ln L(\theta;x_1,x_2,...,x_n)
&= \ln \prod\limits_{i=1}^{n}f(x_i|\theta) \\
&= \sum\limits_{i=1}^{n}f(x_i|\theta)
\end{align}
\tag{3}
$$



## 2. Maximum Likelihood Estimation in Regression

In regression, all the data are independence: therefore the hypothesis accounts for Gaussian Distribution $p(y|x,\theta) ∼ N(\epsilon, \sigma^2)$. To make the correct probability maximum, we apply MLE into this. So the probability of correct could be written as formula (4).

$$
\begin{align}
L(\theta;x_1,x_2,...,x_n)
&= \prod\limits_{i=1}^{n}p(y|x,\theta) \\
&= \prod\limits_{i=1}^{n} \frac{1}{\sqrt{2\pi}\sigma} \exp\left( \frac{-(y^{(i)} - \theta ^ T x^{(i)}) }{2\sigma ^2}\right)\\
\end{align}
\tag{4}
$$

Then we use log likelihood to make the problem easier to compute. See formula (5).


$$
\begin{align}
\ln L(\theta;x_1,x_2,...,x_n)
&= \ln \prod\limits_{i=1}^{n} \frac{1}{\sqrt{2\pi}\sigma} \exp\left( \frac{-(y^{(i)} - \theta ^ T x^{(i)})}{2\sigma ^2}\right)\\
&= \sum\limits_{1}^{n} \log\left( \frac{1}{\sqrt{2\pi}\sigma} \exp\left( \frac{-(y^{(i)} - \theta ^ T x^{(i)})}{2\sigma ^2}\right) \right) \\
&= \sum\limits_{1}^{n} \log\left( \frac{1}{\sqrt{2\pi}\sigma} \right) + \sum\limits_{1}^{n}\log \left(\exp\left( \frac{-(y^{(i)} - \theta ^ T x^{(i)})}{2\sigma ^2} \right)\right) \\
&= \sum\limits_{1}^{n} \log\left( \frac{1}{\sqrt{2\pi}\sigma} \right) + \sum\limits_{1}^{n}\left( \frac{-(y^{(i)} - \theta ^ T x^{(i)})}{2\sigma ^2} \right) \\
&= \sum\limits_{1}^{n} \log\left( \frac{1}{\sqrt{2\pi}\sigma} \right) - \underbrace {\frac{1}{2\sigma ^2}\sum\limits_{1}^{n}\left( -(y^{(i)} - \theta ^ T x^{(i)}) \right)}_{Cost-Function}\\
\end{align}
\tag{5}
$$

To make the probability maximum, we need to make the cost function minimum, which is also known as cost function in regression model.



# Reference
[1] [Wikipedia-Maximum Likelihood Estimation](https://en.wikipedia.org/wiki/Maximum_likelihood_estimation)

[2] [RapidTables
-Logarithm Rules](https://www.rapidtables.com/math/algebra/Logarithm.html#log-rules)
