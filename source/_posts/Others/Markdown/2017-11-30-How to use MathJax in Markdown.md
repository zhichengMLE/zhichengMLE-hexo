---
title: How to use MathJax in Markdown
date: 2017-11-30 11:23:19
categories: [Markdown]
tags: [Markdown, Mathjax]
mathjax: false
copyright: true
top: 100
---

# How to use MathJax in Markdown


## When to Use MathJax?
 When using markdown to write blog, especially using Github Page to do it. You may have trouble to display formula. There are several ways[1] to do that. But the simplest way is to use MathJax.

## How to Use MathJax?
Add the code below to your markdown file, and that's it!

```
<script type="text/javascript" async src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML"> </script>
```


For example, add the test code to your blog.md file
```
<script type="text/javascript" async src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML"> </script>

test: $$n==x$$
```


# Reference
[1] [Markdown中插入数学公式的方法](http://blog.csdn.net/xiahouzuoxin/article/details/26478179)

[2] [MathJax Chinese Doc 2.0 documentation](http://mathjax-chinese-doc.readthedocs.io/en/latest/start.html)

[3] [MathJax basic tutorial and quick reference](https://math.meta.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference)

[4] [docs.mathjax.org](http://docs.mathjax.org/en/latest/configuration.html#loading)

<br>
<br>
---------------------------------------