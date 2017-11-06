---
title: Matrix and Vector Transformation
date: 2017-10-28 13:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics]
mathjax: false
copyright: true
top: 100
---



## 1. When to Transform?
在一些神经网络的一些优化算法中，要求传入的是向量来进行优化。但是权值却是矩阵，所以需要进行转换，在处理之后再转回来。
所以我们需要学习如何进行Matrix 和 Vector 的转换


------------------------------------------
<br>
<br>


## 2. How to Transform?
### 1) Octave Implement
> 在Octave 中我们需要用的 "[]" 把矩阵转成向量；再通过 Reshape 函数把向量转换回数组

1.分别使用 ones()函数产生2个等大的矩阵，作为输入层，隐藏层。
```
theta1 = ones(3,4)

> Output:
theta1 =

  1   1   1   1
  1   1   1   1
  1   1   1   1



theta2 = 3*ones(3,4)

> Output:
theta2 =
  3   3   3   3
  3   3   3   3
  3   3   3   3
```
2. 同样使用ones()函数，产生输出层的theta

```
theta3 = 4*ones(1,4)

> Output:
theta3 =
  4   4   4   4
```

3.通过 "[]" 来合成矩阵，注意括号里面要加上 : 符号代码把当前矩阵变成向量输出-->就可以得到我们需要的向量了

```
thetaVec = [theta1(:); theta2(:); theta3(:)]

> Output:
thetaVec =

  1
  1
  1
  1
  1
  1
  1
  1
  1
  1
  1
  1
  3
  3
  3
  3
  3
  3
  3
  3
  3
  3
  3
  3
  4
  4
  4
  4
```

4.再通过Reshape函数把向量转换回矩阵：要注意向量的index。

```
newTheta1 = reshape(thetaVec(1:12),3,4)

> Output:
newTheta1 =
  1   1   1   1
  1   1   1   1
  1   1   1   1




newTheta2 = reshape(thetaVec(13:24),3,4)

> Output:
newTheta2 =

  3   3   3   3
  3   3   3   3
  3   3   3   3



newTheta3 = reshape(thetaVec(25:28),1,4)

> Output:
newTheta3 =
  4   4   4   4
```



### 2) Python Implement
> @TODO

<br>
<br>
------------------------------------------

