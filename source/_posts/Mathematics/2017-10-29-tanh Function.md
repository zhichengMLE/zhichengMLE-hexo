---
title: tanh Function
date: 2017-10-29 11:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics]
mathjax: true
copyright: true
top: 100
---

# tanh Function


## 1. Introduction
> To limit all data within the range of -1 to 1. Comparing to Sigmoid Function which output range is [0,1]

## 2. Formula
The formula and derivative of tanh is:
$$
\begin{align}
f(z)  &= tanh(z) = \frac{e^z - e^{-z}}{e^z+e^{-z}} \\
f'(z) &= 1 - (f(z))^2
\end{align}
$$
where as the sigmoid function is pretty close
$$
\begin{align}
f(z)  &= sigmoid(z) = \frac{1}{1+e^{-z}} \\
f'(z) &= 1 - f(z)
\end{align}
$$

See the figure of tanh and sigmoid below.
![tanh](https://raw.githubusercontent.com/JasonDean-1/MarkdownPhoto/c0f683d49f1d3f2d5383d25566d4f490c552645d/__Blog/__Personal%20Understanding/Mathematics/images/tanh.png)
<center>tanh Function</center>
<br>

![sigmoid](https://raw.githubusercontent.com/JasonDean-1/MarkdownPhoto/2f13c175c89fc02793cef19d6cb2223d548479d3/__Blog/__Personal%20Understanding/Mathematics/images/sigmoid.png)
<center>sigmoid Function</center>
<br>



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
![tanh](https://raw.githubusercontent.com/JasonDean-1/MarkdownPhoto/c0f683d49f1d3f2d5383d25566d4f490c552645d/__Blog/__Personal%20Understanding/Mathematics/images/tanh.png)
<center>tanh Function</center>



# Relative
Sigmoid Function


<br>
<br>
------------------------------------------