---
title: Practical Derivatives
date: 2017-11-03 17:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics, Calculus]
mathjax: true
copyright: true
top: 100
---

# Practical Derivatives


## 1. Power Function

Given : $f \left( x \right) = x^a \text(a \in Q)$

Proofs : $f'\left( x \right) = a \cdot x^{a-1}$

> Deduction

$$
\begin{align}
f'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right) - f \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \left(x + \Delta x\right)^a - x^a}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \left(C_a^a x^a+C_a^1x^{a-1}\Delta x + \cdots \Delta x^a\right) - x^a}{\Delta x} \\
& = \lim\limits_{\Delta x \rightarrow0} \frac{ \left(C_a^a x^a- x^a \right) + \left(C_a^1x^{a-1}\Delta x + \cdots \Delta x^a\right) }{\Delta x} \\
& = \lim\limits_{\Delta x \rightarrow0} \frac{ 0 + \left(C_a^1x^{a-1}\Delta x + \cdots \Delta x^a\right) }{\Delta x} \\
& = \lim\limits_{\Delta x \rightarrow0} { C_a^1x^{a-1} + \cdots \Delta x^{a-1} } \\
& = C_a^1x^{a-1} \\
& = a x^{a-1}
\end{align}
$$


## 2. Sinus Function
Given : $f \left( x \right) = sin\left(x\right)$

Proofs : $f'\left( x \right) = cos\left(x\right)$

> Deduction

$$
\begin{align}
f'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x\right) - f \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \sin \left(x + \Delta x\right) - \sin x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ (\sin x \cos {\Delta x} +  \cos x \sin {\Delta x}) - \sin x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ (\sin x \cos {\Delta x} - \sin x) +  \cos x \sin {\Delta x}}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \sin x( \cos {\Delta x} - 1) +  \cos x \sin {\Delta x}}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \sin x \left[\left( 1-2 \sin^2{\frac{\Delta x}{2}} \right) -1 \right] + \cos x \left( 2 \sin{\frac{\Delta x}{2} \cos{\frac{\Delta x}{2}}}\right)
}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ -2 \sin x  \sin^2{\frac{\Delta x}{2}} + 2 \sin{\frac{\Delta x}{2}} \left( \cos x  \cos{\frac{\Delta x}{2}}\right)
}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{  2 \sin{\frac{\Delta x}{2}} \left( \cos x  \cos{\frac{\Delta x}{2}} - \sin x  \sin^2{\frac{\Delta x}{2}}\right)
}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{  2 \sin{\frac{\Delta x}{2}} \cos\left( x + \frac{\Delta x}{2} \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \sin{\frac{\Delta x}{2}} \cos\left( x + \frac{\Delta x}{2} \right)}{\frac{\Delta x}{2}} \\
&\because \lim\limits_{\Delta x \rightarrow0} \sin \frac{\Delta x}{2} =  \frac{\Delta x}{2} \\
&\therefore  \frac{  \sin{\frac{\Delta x}{2}} }{\frac{\Delta x}{2}} = 1 \\
&\because  \lim\limits_{\Delta x \rightarrow0} \cos\left( x + \frac{\Delta x}{2} \right) = \cos \left( x  + 0\right) = \cos x \\
&\therefore f'(\sin x) = \cos x
\end{align}
$$





## 3. Cosinus Function
Given : $f \left( x \right) = \cos(x)$

Proofs : $f'\left( x \right) = - \sin(x)$

> Deduction

$$
\begin{align}
f'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left(x + \Delta x \right) - f \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \cos\left(x + \Delta x\right) - \cos x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \left( \cos x \cos \Delta x - \sin x \sin \Delta x\right) - \cos x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \left( \cos x \cos \Delta x  - \cos x \right) - \sin x \sin \Delta x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \cos x \left( \cos \Delta x  - 1 \right) - \sin x \sin \Delta x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \cos x \left[\left( 1 - 2 \sin^2\frac{\Delta x}{2} \right) -1 \right] - \sin x \left( 2 \sin \frac{\Delta x}{2} \cos\frac{\Delta x}{2} \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{2 \sin^2 \frac{\Delta x}{2} \cos x - 2 \sin \frac{\Delta x}{2} \left( \sin x \cos \frac{\Delta x}{2} \right)}{\Delta x}\\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ 2 \sin \frac{\Delta x}{2} \left( \sin \frac{\Delta x}{2} \cos x - \cos \frac{\Delta x}{2} \sin x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ 2 \sin \frac{\Delta x}{2} \sin \left( \frac{\Delta x}{2} -x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \left[ \sin \left( \frac{\Delta x}{2} - x  \right) \frac{\sin\frac{\Delta x}{2}}{\frac{\Delta x}{2}} \right] \\
&\because \lim\limits_{\Delta x \rightarrow0} \sin \frac{\Delta x}{2} =  \frac{\Delta x}{2} \\
&\therefore  \frac{  \sin{\frac{\Delta x}{2}} }{\frac{\Delta x}{2}} = 1 \\
&\because  \lim\limits_{\Delta x \rightarrow0} \sin\left( \frac{\Delta x}{2} - x \right) = \sin \left( 0 - x \right) = \sin (-x)  = - \sin x\\
&\therefore f'(\cos x) = - \sin x
\end{align}
$$




## 4. Exponential Function
Given : $f \left( x \right) = a ^ x \text( a>0 \&  a \neq 1 )$

Proofs : $f'\left( x \right) = a^x \ln a$

> Deduction

$$
\begin{align}
f'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f\left( x + \Delta x \right) - f \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ a^{x + \Delta x} - a^x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ a^x \left( a^{\Delta x} -1 \right)}{\Delta x} \\
Introduce \quad
& t = a^{\Delta x} - 1, then \quad a^{\Delta x} = t + 1, \quad \Delta x = \log_a\left( t+1 \right)\\
equation  \quad
&= \lim\limits_{t \rightarrow0} \frac{ a^x t}{\log_a(t+1)}\\
&= \lim\limits_{t \rightarrow0} \frac{ a^x}{\frac{1}{t} \log_a(t+1)}\\
&= \lim\limits_{t \rightarrow0} \frac{ a^x}{\log_a(t+1)^{\frac{1}{t} }}\\
&\because  \lim\limits_{t \rightarrow0} (t+1)^{\frac{1}{t}} = e \\
&\therefore  \lim\limits_{t \rightarrow0} \frac{ a^x}{\log_a\left( t+1 \right)^{\frac{1}{t} }} = \frac{ a^x}{\log_ae}  = a^x \cdot \frac{ \ln a }{\ln e} = a^x \ln a\\
&\therefore f'(a ^ x ) = - a^x \ln a
\end{align}
$$


## 5. Logarithmic function
Given : $f \left( x \right) = \log_a x \text( x>0 \&  a \neq 1 )$

Proofs : $f'\left( x \right) = \frac{1}{x\ln a}$

> Deduction

$$
\begin{align}
f'\left( x \right)
&= \lim\limits_{\Delta x \rightarrow0} \frac{ f \left(x + \Delta x \right) - f \left( x \right)}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \log_a \left(x + \Delta x \right) - \log_a x}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0} \frac{ \log_a(\frac{x + \Delta x}{x})}{\Delta x} \\
&= \lim\limits_{\Delta x \rightarrow0}  \frac{1}{x}\frac{x }{\Delta x} \log_a \left(\frac{x + \Delta x}{x}\right) \\
&= \lim\limits_{\Delta x \rightarrow0}  \frac{1}{x} \log_a \left( 1+ \frac{  \Delta x}{x} \right)^{\frac{x }{\Delta x}} \\
Introduce \quad
& t = \frac{  \Delta x}{x}\\
equation  \quad
&=\lim\limits_{\Delta x \rightarrow0}  \frac{1}{x} \log_a \left( 1+ t \right)^{\frac{1 }{t}} \\
&\because  \lim\limits_{t \rightarrow0} \left( t+1 \right)^{\frac{1}{t}} = e \\
&\therefore  \lim\limits_{\Delta x \rightarrow0}  \frac{1}{x} \log_a \left( 1+ t \right)^{\frac{1 }{t}} = \frac{1}{x} \frac{\ln e}{\ln a} = \frac{1}{ x \ln a} \\
&\therefore f'\left(\log_a x\right) = \frac{1}{x\ln a}
\end{align}
$$
