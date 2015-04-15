" 不兼容vi
" set nocp 

" 插件管理
call pathogen#infect()
call pathogen#helptags()

" 主题
colorscheme desert

syntax enable

filetype plugin indent on

autocmd FileType python,shell,bash,sh,mkd,html set tabstop=4 | set shiftwidth=4 | set expandtab | set softtabstop=4

set splitright
set splitbelow

" highlight and trailing space highlight
match ErrorMsg /\s\+$/
autocmd BufWritePre *.py :%s/\s\+$//e

set backspace=indent,eol,start

" 缩进设置
set autoindent
set cindent

" 缩进线
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

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

" 开启光亮光标行 
" set cursorline
" hi CursorLine   cterm=NONE ctermbg=218 ctermfg=white guibg=darkred guifg=white

"开启高亮光标列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=NONE ctermfg=white guibg=darkred guifg=white

" netrw setting
" let g:netrw_altv = 1
let g:netrw_winsize = 30
nmap fe :Sexplore!<CR>

" syntastic(pylint) 静态代码检查
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_jump = 2
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = '--ignore=C, F, R'
" highlight SignColumn ctermbg=black
highlight SyntasticWarning NONE
highlight SyntasticError NONE

" 关闭markdown 折叠
let g:vim_markdown_folding_disabled=""

" ctags path
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" 快捷键设置
cmap tlist TagbarToggle
nmap <Space> :TagbarToggle<CR>

" cmap qi q!
map ; <C-w>w
