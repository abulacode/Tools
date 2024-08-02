"set nu                                                                                                                                                                      
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set cursorline
set showmatch
let python_highlight_all = 1


syntax enable

autocmd Bufread,BufNewfile *.py set filetype=python.vim
" remove trailing blanks
autocmd BufWritePre *.py,*.h,*.cc,*.cpp :%s/\s\+$//e
" goto the position I was when last editing the file
au BufReadPost * if line("'\'") > 0 && line("'\'") <= line("$") | exe "normal g'\"" | endif
