---
title: Deploy Blog With Hexo And Github Page
date: 2017-11-22 11:23:19
categories: [Hexo]
tags: [Hexo]
mathjax: false
copyright: true
top: 100
---

# Deploy Blog With Hexo And Github Page

This blog aims to write down the process of deploying a personal website, and the difficulties which I have met.

## Platform:
1. Hexo
2. Github Page
3. Windows 10

## Prerequisite
1. Regist Github and Create a repository for github page
2. Install Node.js in you local PC.
3. Add the ssh key to your Github
> Test: ssh -T git@github.com
> If you run this command without error, it means you are good to go.

## Hexo Installation and Deployment

### Install Hexo
1. mkdir <Folder for Hexo>
2. cd <Folder for Hexo>
3. npm install -g hexo-cli
4. hexo
> you should have get this message.

```
D:\Blog\zhichengML> hexo
Usage: hexo <command>
Commands:
  clean     Remove generated files and cache.
  config    Get or set configurations.
  deploy    Deploy your website.
  generate  Generate static files.
  help      Get help on a command.
  init      Create a new Hexo folder.
  list      List the information of the site
  migrate   Migrate your site from other system to Hexo.
  new       Create a new post.
  publish   Moves a draft post from _drafts to _posts folder.
  render    Render files with renderer plugins.
  server    Start the server.
  version   Display version information.

Global Options:
  --config  Specify config file instead of using _config.yml
  --cwd     Specify the CWD
  --debug   Display all verbose messages in the terminal
  --draft   Display draft posts
  --safe    Disable all plugins and scripts
  --silent  Hide output on console

For more help, you can use 'hexo help [command]' for the detailed information
or you can check the docs: http://hexo.io/docs/
```

### Deploy Website
#### Init Hexo
1. hexo init <blog name>
2. cd <blog name>
3. npm install

#### Config Hexo
1. Open "_config.yml" file and override this file with your information
>The Origin file
```
# Hexo Configuration
## Docs: https://hexo.io/docs/configuration.html
## Source: https://github.com/hexojs/hexo/

# Site
title: # The title of your website
subtitle: # The subtitle of your website
description: # The description of your website
author: # Your name
language: # The language of your website
timezone:

# URL
## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
url: http://yoursite.com/child
root: /
permalink: :year/:month/:day/:title/
permalink_defaults:

# Directory
source_dir: source
public_dir: public
tag_dir: tags
archive_dir: archives
category_dir: categories
code_dir: downloads/code
i18n_dir: :lang
skip_render:

# Writing
new_post_name: :title.md # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link: true # Open external links in new tab
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: true
  auto_detect: false
  tab_replace:

# Category & Tag
default_category: uncategorized
category_map:
tag_map:

# Date / Time format
## Hexo uses Moment.js to parse and display date
## You can customize the date format as defined in
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD
time_format: HH:mm:ss

# Pagination
## Set per_page to 0 to disable pagination
per_page: 10
pagination_dir: page

# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
theme: landscape

# Deployment
## Docs: https://hexo.io/docs/deployment.html
deploy:
  type:
```

> You should override at least "# Site" and "# Deployment" session
E.g.
```
# Site
title: zhichengML
subtitle:
description: Personal Website
author: zhichengML
language: en
timezone: Asia/Shanghai
```
```
# Deployment
## Docs: https://hexo.io/docs/deployment.html
deploy:
  type: git
  repo: git@github.com:zhichengML/zhichengML.github.io.git
  branch: master
```
Note that, there must be a blank space " " between label and information, e.g., "type: git"

#### Preview Your Website in Local PC
1. hexo server
> The default port is 4000. You may want to change that with command hexo server -p <port>.
2. Open you local pc for test.

#### Deploy Website
1. hexo generate
2. hexo deploy
> You may met problem when deploying.
> See the troubleshoot for more information

## Troubleshoots
1. There is no response when running "hexo deploy"
> Open "_config.yml" file and check if you have a space between the label and information. E.g., "type: git".

2. Deployer not found: git
> Becaue the older hexo use github, while the latest one(3.0) use git. So make sure you had typed "type: git" instead of "type: github". Then, install the git delopyer with command "npm install hexo-deployer-git --save"

3. fatal: Not a git repository (or any of the parent directories): .git
> Make sure you could run "ssh -T git@github.com" correctly. Then, delte the ".deploy_git" directory, and run "hexo deploy" again.


## Reference
[1] [20分钟教你使用hexo搭建github博客](http://www.jianshu.com/p/e99ed60390a8)
[2] [针对github权限导致hexo部署失败的解决方案][http://www.cnblogs.com/xsilence/p/6001938.html]



<br>
<br>
---------------------------------------