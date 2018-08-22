---
title: Workflow of Resolve Comflicts
date: 2018-08-21 11:23:19
categories: [Git]
tags: [Git]
mathjax: false
copyright: true
top: 100
---


1. Get up-to-date commits
    ```
    git pull
    ```

2. Then get comflicts when merging.
    ```
    computer:my-repository emmap$ git pull origin master
     * master            master     -> FETCH_HEAD
    Auto-merging team_contact_info.txt
    CONFLICT (content): Merge conflict in team_contact_info.txt
    Automatic merge failed; fix conflicts and then commit the result.
    ```

3. Resolve the conflict by doing the following

4. Add and commit the change
    ```
    git add -A
    git commit -am "resolve conflict
    ```

5. Push the change to remote repository
    ```
    git push
    ```

Ref: [Resolve merge conflicts](https://confluence.atlassian.com/bitbucket/resolve-merge-conflicts-704414003.html)

<br>
<br>
---------------------------------------