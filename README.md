vim  
===  

persional vim configurations and plugin list  

## plugins:   
pathogen for plugin manager   
snipmate for code generation(requires vim-addon-mw-utils and tlib and vim-snippets)  
tagbar for dir view  
markdown for markdown syntax highlight  
ctrlp.vim for ctrl + P  

## submodule(在worktree根目录下执行)   
1. 添加submodule

```
     git submodule add git://github.com/tpope/vim-markdown.git vim/bundle/vim-markdown  
```

2. 删除  
first Delete the relevant section from .git/config

```
     git config -f .gitmodules --remove-section submodule.vim/bundle/vim-markdown  
     git config -f .git/config --remove-section submodule.vim/bundle/vim-markdown  
     git rm –cached vim/bundle/vim-markdown   

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

