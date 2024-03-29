" 不兼容vi
" set nocp

" 插件管理
call pathogen#infect()
call pathogen#helptags()

" 主题
colorscheme desert

syntax enable

filetype plugin indent on

" autocmd FileType python,shell,bash,sh,mkd,html,cpp,go set tabstop=4 | set shiftwidth=4 | set expandtab | set softtabstop=4
autocmd FileType python,shell,bash,sh,mkd,html,cpp set tabstop=4 | set shiftwidth=4 | set expandtab | set softtabstop=4
autocmd FileType go set tabstop=4 | set shiftwidth=4 | set softtabstop=4

" quickfix window 打开位置
autocmd FileType qf wincmd J

" split window position
set splitright
set splitbelow

" Case insensitivity on filename autocomplete
if exists("&wildignorecase")
    set wildignorecase
endif

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
" set statusline+=%f

" 编码设置
set encoding=utf-8
set fileencodings=utf-8,cp936,gbk

" 搜索设置
set incsearch
set hlsearch

" 开启光亮光标行
" set cursorline
" hi CursorLine   cterm=NONE ctermbg=218 ctermfg=white guibg=darkred guifg=white

" 开启高亮光标列
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=NONE ctermfg=white guibg=darkred guifg=white

" highlight and trailing space highlight
match ErrorMsg /\s\+$/
autocmd BufWritePre *.py,*.go,*.java,*.cpp :%s/\s\+$//e

" netrw setting
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 20
" nmap fe :Sexplore!<CR>

" syntastic(pylint) 静态代码检查
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_auto_jump = 2
" let g:syntastic_auto_loc_list = 2
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_enable_signs = 1
" let g:syntastic_aggregate_errors = 1
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_python_pylint_args = '-E'
" " only check when the user call :SyntasticCheck
" " let g:syntastic_mode_map = { 'mode': 'passive' }
" highlight SignColumn ctermbg=black
" highlight SyntasticWarning NONE
" highlight SyntasticError NONE

" 关闭markdown 折叠
let g:vim_markdown_folding_disabled=1

let g:snipMate = { 'snippet_version' : 1 }


" 快捷键设置
cmap tlist TagbarToggle
nmap <Space> :TagbarToggle<CR>

" cmap qi q!
map ; <C-w>w

" ctags path
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" go ctags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
   \ }

let g:tagbar_type_markdown = {
	\ 'ctagstype' : 'markdown',
	\ 'kinds' : [
		\ 'h:Heading_L1',
		\ 'i:Heading_L2',
		\ 'k:Heading_L3'
	\ ]
	\ }
