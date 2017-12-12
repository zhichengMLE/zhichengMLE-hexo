---
title:  Gradient Descent
date: 2017-12-12 17:23:19
categories: [Machine-Learning-Algorithm]
tags: [Machine-Learning-Algorithm]
mathjax: true
copyright: true
top: 100
---


# Gradient Descent

> There are three gradient descent we current have: batch gradient descent, mini-batch gradient descent, stochastic gradient descent.

## 1. Batch Gradient Descent

A compute intensive gradient descent to converge the value. This algorithm will compute all the data in each iteration.

See more at the following link.

[Batch Gradient Descent](https://zhichengmle.github.io/2017/11/30/Algorithm/Optimize%20Algorithm/2017-11-30-Batch%20Gradient%20Descent/)


## 2. Stochastic Gradient Descent

Contrast to Batch Gradient Descent, Stochastic Gradient Descent (SGD) algorithm will compute only one the data in each iteration. To make the performance better. We will repeat the whole process for 1 to 10 times, according to the size of the data set.

See more at the following link.

[Stochastic Gradient Descent](https://zhichengmle.github.io/2017/12/11/Algorithm/Optimize%20Algorithm/2017-12-11-Stochastic%20Gradient%20Descent/)



## 3. Mini-Batch Gradient Descent

Mini-Batch Gradient Descent is a special algorithm which computes n (1≤n≤all) data in each iteration. That is to say, if the n=1, we got Stochastic Gradient Descent. And if the n=all, we got Batch Gradient Descent.

See more at the following link.

[Mini-Batch Gradient Descent](https://zhichengmle.github.io/2017/12/12/Algorithm/Optimize%20Algorithm/2017-12-12-Mini-Batch%20Gradient%20Descent/)
