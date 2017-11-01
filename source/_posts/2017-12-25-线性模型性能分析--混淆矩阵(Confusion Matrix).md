---
title: 线性模型性能分析--混淆矩阵(Confusion Matrix)
date: 2017-12-25 12:23:19
categories: [Machine-Learning-Mathematics]
tags: [Machine-Learning, Mathematics]
mathjax: true
---


# 1.  什么是混淆矩阵
>在人工智能中，混淆矩阵（confusion matrix）是可视化工具，特别用于监督学习，在无监督学习一般叫做匹配矩阵。在图像精度评价中，主要用于比较分类结果和实际测得值，可以把分类结果的精度显示在一个混淆矩阵里面。混淆矩阵是通过将每个实测像元的位置和分类与分类图像中的相应位置和分类像比较计算的<sup>[1]</sup>。

通过分析混淆矩阵，我们可以得到:
- TPR (True Positive Rate), FPR (False Positive Rate) 并画出ROC (Receiver Operating Characteristic)曲线和求出AUC (Area Under Curve)
- 准确率(Accuracy), 精确率(Precision), 召回率(Recall), F1值(F1 Score)
下面我们来分析混淆矩阵。

-----------------------
<br>
<br>

# 2. 混淆矩阵分析
![Confusion Matrix](https://raw.githubusercontent.com/JasonDean-1/MarkdownPhoto/92bc9a9e0201360c0245f364051a9b2fadc77b54/MachineLearning/ConfusionMatrix.png)
<center>Confusion Matrix<sup>[2]<sup></center>

分析：
TP：模型判定为P，实际上也是P，即判断正确
FP：模型判定为N，实际上却是P，即判断错误
FN：模型判定为P，实际上却是N，即判断错误
TN：模型判定为N，实际上也是N，即判断正确

-----------
存在关系：
$TPR = \frac{TP}{TP+FP}$

$FPR = \frac{FP}{TN+FN}$

$Accuracy = \frac{TP+TN}{TP+FP+TN+FN}$

$Precision = \frac{TP}{TP+FP}$

$Recall = \frac{TP}{TP+FN}$

$F1-Measure= \cfrac{2}{\cfrac{1}{Precision}+\cfrac{1}{Recall}}$

-----------------------
<br>
<br>

#3. Accuracy, Precision, Recall，F1-Measure的分析
> 举例：要对癌症患者分类：良性和恶性。现在有200个患者，刚好100个良性，100个恶性，训练之后的预测50个良性，150个恶性，即：预测50个良性正确，有50个良性被预测为恶性，100个恶性预测全部正确。
> 此时：
> TP: 50
> FP: 50
> FN: 0
>TN: 100
>TPR: 0.5
>FPR: 0.5
>Accuracy: 75%
>Precision: 50%
>Recall: 100%
>F1-Measure: 66.7% 即($\frac{2}{3}$)


关于精确率和召回率，要根据具体情境去判断，那个高才好，参考知乎第一条回答[精确率、召回率、F1 值、ROC、AUC 各自的优缺点是什么？](https://www.zhihu.com/question/30643044/answer/48955833)

-----------------------
<br>
<br>

#4. ROC，AUC的分析：

##4.1. ROC分析
关于ROC，先看下图，
![ROC](https://raw.githubusercontent.com/JasonDean-1/MarkdownPhoto/ff7b13d768029291632ed1196d4729e41f30d371/MachineLearning/ROC.jpg)

根据刚刚上面对TPR，FPR的分析，容易发现:

- 在（0,0）点，TP和FP都为0（FN和TN都为1），也就是说，对于所有值，预测模型都预测为Negative，即判断为Positive的阈值过高。
- 在（1,1）点，TP和FP都为1（FN和TN都为0），也就是说，对于所有值，预测模型都预测为Positive，即判断为Positive的阈值过低。


##4.2. AUC分析
AUC（Area Under Curve），我觉得原名应为（Area Under roc Curve）更好，其定义为ROC曲线下的面积，面积的数值不会大于1。
ROC曲线一般都处于$y=x$这条直线的上方，没有人希望模型在$y=x$的线以下，所以AUC的取值范围在0.5和1之间。使用AUC值作为评价标准是因为很多时候ROC曲线并不能清晰的说明哪个分类器的效果更好，但对应一个数据来说，AUC往往越大越好。

-----------------------
<br>
<br>

# 参考
[1]百度百科:https://baike.baidu.com/item/%E6%B7%B7%E6%B7%86%E7%9F%A9%E9%98%B5/10087822?fr=aladdin&fromid=18082441&fromtitle=Confusion+Matrix
[2]维基百科:https://en.wikipedia.org/wiki/Confusion_matrix
[3]精确率、召回率、F1 值、ROC、AUC 各自的优缺点是什么？https://www.zhihu.com/question/30643044/answer/48955833

<br>
<br>
------------------------------------------