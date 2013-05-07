vim  
===  

persional vim configurations and plugin list  

## plugins:  
pathogen for plugin manager    
snipmate for code generation(requires vim-addon-mw-utils and tlib and vim-snippets)  
tagbar for dir view  

## submodule(在worktree根目录下执行)  
1. 添加submodule  

     git submodule add git://github.com/tpope/vim-markdown.git vim/bundle/vim-markdown  

2. 删除   

    git rm –cached vim/bundle/vim-markdown

3. 升级所有的插件   

    git submodule foreach git pull origin master

4. clone 所有的插件  

    git submodule init  
    git submodule update

