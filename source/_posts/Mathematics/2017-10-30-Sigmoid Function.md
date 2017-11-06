---
title: Sigmoid Function
date: 2017-10-30 15:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics]
mathjax: true
copyright: true
top: 100
---

# Sigmoid Function


## 1. Introduction
> To limit all data within the range of 0 to 1.

## 2. Formula
$$
y = \frac{1}{1+e^{-x}}
$$

## 3. Implementation
### 3.1 Octave
```
 x = linspace(-10, 10 ,10000);
 y = zeros( size(x, 1), size(x, 2));

 for i = 1:length(x)
   y(i) = 1/(1+e^(-x(i)));
 endfor

 figure();
 plot( x,y);
 grid on;
 xlabel("x");
 ylabel("y=1/(1+e^-x)");
 title("Sigmoid Function");
```

Output figure
![Sigmoid Function](https://raw.githubusercontent.com/JasonDean-1/MarkdownPhoto/fd188539ca35c6e4d8859d07bbde8f5439760bae/__Blog/__Personal%20Understanding/Algorithm/Supervised%20Learning/linear%20model/images/2.Logistic%20Regression%20Hypothesis.png)
<center>Sigmoid Function</center>


<br>
<br>
------------------------------------------