---
title: Latex 常见错误整理
date: 2017-12-05 12:23:19
categories: [Latex]
tags: [Latex]
mathjax: true
copyright: true
top: 100
---

# Latex 常见错误整理

## 1. 求导

```
\sideset{^*}{'}\sum_{1\le i\le 100} A(i)
\qquad
\sum_{1\le i\le 100}\vphantom{\sum}^{'} A(i)
\qquad
\mathop{{\sum}'}_{1\le i\le 100} A(i)
```

$$
\sideset{^*}{'}\sum_{1\le i\le 100} A(i)
\qquad
\sum_{1\le i\le 100}\vphantom{\sum}^{'} A(i)
$$

## 2. 下标

```
C_{1} + {C_2} \\
C_{m,n}
```

$$
C_{1} + {C_2} \\
C_{m,n}
$$


## 3. 前缀

```
{\int_{0}^{\frac{\pi}{2}}} \\
\sum_{i=1}^{n}\\
\prod_\epsilon
```

$$
{\int_{0}^{\frac{\pi}{2}}} \\
\sum_{i=1}^{n}\\
\prod_\epsilon
$$

## 4. 占位符

```
C_{1} \qquad {C_2} \\
C_{1} \quad {C_2} \\
C_{1} \ {C_2}
```

$$
C_{1} \qquad {C_2} \\
C_{1} \quad {C_2} \\
C_{1} \ {C_2}
$$

## 5. 公式对齐

```
$$
\begin{align}
\lim\limits_{x \rightarrow a} f(x)
&= \frac{f\left( a \right)}{ 0 !}\left( x - a \right) ^ 0 + \frac{f'\left( a \right)}{ 1 !}\left( x - a \right) ^ 1 + \frac{f''\left( a \right)}{ 2 !}\left( x - a \right) ^ 2  + \cdots + \frac{f^{(n)}\left( a \right)}{ n !}\left( x - a \right) ^ n \\
&= \sum\limits_{n=0}^{\infty} \frac{f^{(n)}\left( a \right)}{ n !}\left( x - a \right) ^ n
\end{align}
$$
```


$$
\begin{align}
\lim\limits_{x \rightarrow a} f(x)
&= \frac{f\left( a \right)}{ 0 !}\left( x - a \right) ^ 0 + \frac{f'\left( a \right)}{ 1 !}\left( x - a \right) ^ 1 + \frac{f''\left( a \right)}{ 2 !}\left( x - a \right) ^ 2  + \cdots + \frac{f^{(n)}\left( a \right)}{ n !}\left( x - a \right) ^ n \\
&= \sum\limits_{n=0}^{\infty} \frac{f^{(n)}\left( a \right)}{ n !}\left( x - a \right) ^ n
\end{align}
$$



------------------------------------------
<br>
<br>