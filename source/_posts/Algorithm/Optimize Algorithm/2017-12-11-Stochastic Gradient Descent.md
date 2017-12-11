---
title: Stochastic Gradient Descent
date: 2017-12-11 15:25:19
categories: [Machine-Learning-Algorithm]
tags: [Machine-Learning-Algorithm]
mathjax: true
copyright: true
top: 100
---

# Stochastic Gradient Descent


## 1. What is Stochastic Gradient Descent

Stochastic Gradient Descent(SGD) is similiar with [Batch Gradient Desent](https://zhichengmle.github.io/2017/11/30/Algorithm/Optimize%20Algorithm/2017-11-30-Batch%20Gradient%20Descent/), but it used only 1 example for each iteration. So that it makes some different as well. However, the stochastic gradient descent will not exactly converge into the minimum point. It will bounds around some ratio of the minimum point. Also the cost function will not decrease all the time. It oscillates and tends to converge/expand account for the step size which you have choose.

## 2. Stochastic Gradient Descent Algorithm

Since we use only one example for each iteration, so the weights would be optimize with a random gradient, as a result the direction is unsure. But after loop all examples, the trend of the algorithm will lead to converge. So the this algorithm can never converge exactly to the minimum point. Choose an appropriate step size is of significant importance.

Another tips to make this algorithm performs better is loop the whole procedure for some times, say 1 to 10 times. This should depend on the dataset, since loop a large data set for 10 times is also compute intensive.

The algorithm procedure is shown below.

![Sthochastic Gradient Descent Algorithm](https://raw.githubusercontent.com/zhichengMLE/MarkdownPhoto/9cac96cbafaeb85fbc5298a21ec223e43ed84197/__Blog/__Personal%20Understanding/_archive/_images/Stochastic%20Gradient%20Descent-Stochastic%20Gradient%20Descent%20Algorithm.jpg)

Sthochastic Gradient Descent Algorithm




## 3. Compute Effort

Since the stochastic use only 1 example each iteration, the compute effort of this algorithm is O(N).

| Batch Gradient Descent          | Stochastic Gradient Descent       |
| ------------------------------- | --------------------------------- |
| use 1 example in each iteration | use all example in each iteration |
| relative compute loose          | relative compute intensive        |

## 4. Visualize Algorithm

The images below shown the stochastic gradient descent in 1 features and 2 features. It shows that the cost is not alway converge and it eventually converge.

![Visualize Algorithm](https://raw.githubusercontent.com/zhichengMLE/MarkdownPhoto/f0126a7845cc2943671576f3a5622305c1749cc2/__Blog/__Personal%20Understanding/_archive/_images/Stochastic%20Gradient%20Descent-Visualize%203.jpg)
