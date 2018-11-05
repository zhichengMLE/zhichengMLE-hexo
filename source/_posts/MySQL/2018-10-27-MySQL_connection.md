---
title: MySQL Connection (MACOS)
date: 2018-10-27 12:23:19
categories: [MySQL]
tags: [MySQL]
mathjax: true
copyright: true
top: 100
---


# Problem: Trying to use nodejs (waterline) to connect MySQL locally, but got BAD CONNECTION error.

Solution (MAC OS 10):

Make sure MySQL works correctly.

Ref:https://stackoverflow.com/questions/9624774/after-mysql-install-via-brew-i-get-the-error-the-server-quit-without-updating

```
brew remove mysql
brew cleanup
launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
rm ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
sudo rm -rf /usr/local/var/mysql

brew install mysql
mysqld --initialize --explicit_defaults_for_timestamp
mysql.server start # no sudo!
```

If mysql.server work correctly, my sure you have the account and account is able to access using password.

Run the following codes in shell

```
mysql -u root
```

Then run the following in MySQL shell.

```
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'password';
alter user 'USER'@'localhost' identified with mysql_native_password by 'PASSWORD'
```

It should be all set!

Env:
- MACOS 10
- Server version: 8.0.12 Homebrew (install via HomeBrew)

