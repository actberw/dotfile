项目介绍
======  

执行`make init` 初始化开发环境.

## vim

persional vim configurations and plugin list  

#### 第三方插件

pathogen: plugin manager   
snipmate: code generation(requires vim-addon-mw-utils, tlib, vim-snippets and vim-snippets)  
tagbar: tag view  
markdown: markdown syntax highlight  
indentline: show python indent level  
syntastic: python syntax(pylint) check.

#### 内置插件

netrw: 目录浏览, 取代 NerdTree, `:help :netrw` 查看帮助文档.  
omni: 代码补全, `:help compl-omni` 查看帮助文档. snipmate是tab补全, 可以在vim-snippets中定义补全的代码段. omni还提供另两种方式的补全: 关键字补全(Ctrl-n, Ctrl-p)和语法补全(Ctrl-x Ctrl-O)

#### submodule(在worktree根目录下执行)

1. 添加submodule

```
     git submodule add git://github.com/tpope/vim-markdown.git vim/bundle/vim-markdown  
```

2. 删除  
first Delete the relevant section from .git/config

```
     git config -f .gitmodules --remove-section submodule.vim/bundle/vim-markdown  
     git config -f .git/config --remove-section submodule.vim/bundle/vim-markdown  
     git rm –-cached vim/bundle/vim-markdown   

     rm -rf .git/modules/vim/bundle/vim-markdown  
     rm -rf vim/bundle/vim-markdown   
```

3. 升级所有的插件

```
     git submodule foreach git pull origin master
```

4. clone 所有的插件

```
     git submodule init  
     git submodule update
```

## basrc 

定义了一些别名和在bash提示中显示git 分支.

## tmux.conf

tmux的常用配置文件

## git-alias.sh

git 定义别名脚本
