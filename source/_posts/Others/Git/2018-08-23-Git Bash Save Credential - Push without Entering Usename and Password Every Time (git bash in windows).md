---
title: Git Bash Save Credential - Push without Entering Usename and Password Every Time (git bash in windows)
date: 2018-08-23 12:23:19
categories: [Git]
tags: [Git]
mathjax: false
copyright: true
top: 100
---

In Git Bash window, run the following command
```
git config --global credential.helper wincred
```

Then run `git push` once again and enter your credentials (username and password). Then all this information will be saved.


<br>
<br>
---------------------------------------