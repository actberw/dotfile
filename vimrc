syntax enable
filetype plugin indent on

autocmd FileType python,shell,bash,sh,mkd,html set tabstop=4 | set shiftwidth=4 | set expandtab | set softtabstop=4

set backspace=indent,eol,start

" 缩进设置
set autoindent
set cindent

set nu
set showmatch

" 状态栏
set ruler
set laststatus=2

" 编码设置
set encoding=utf-8
set fileencodings=utf-8,cp936,gbk

" 搜索设置
set incsearch
set hlsearch

" 主题
colorscheme desert

" 开启光亮光标行 
" set cursorline
" hi CursorLine   cterm=NONE ctermbg=218 ctermfg=white guibg=darkred guifg=white

"开启高亮光标列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=218 ctermfg=white guibg=darkred guifg=white

" 插件管理
call pathogen#infect()
call pathogen#helptags()

" pylint 静态代码检查
" autocmd FileType python compiler Pylint 

let g:vimrc_author='actberw' 
let g:vimrc_email='actberw@gmail.com' 
let g:vimrc_homepage='' 

" 关闭markdown 折叠
let g:vim_markdown_folding_disabled=""

" ctags path
" let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" 快捷键设置
nmap <Space> :TagbarToggle<CR>
nmap <F4> :AuthorInfoDetect<CR>
" cmap qi q!
map ; <C-w>w
cmap tlist TagbarToggle
