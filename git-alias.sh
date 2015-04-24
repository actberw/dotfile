#!/usr/bin/env bash

# config user name and email
echo -n "User name is:"
read USERNAME
git config  user.name $USERNAME
echo -n "User email is:"
read EMAIL
git config user.email $EMAIL


#config alias

git config --global color.ui true
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.co checkout
git config --global core.editor vi 

# show all config
git config --list
