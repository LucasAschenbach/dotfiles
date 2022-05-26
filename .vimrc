set nocompatible

" Editor Appearance "
syntax enable
set number
set ruler
set visualbell
set cursorline
:highlight Cursorline cterm=bold ctermbg=black

" Text Styling "
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Controls "
set mouse=a
set backspace=indent,eol,start
set scrolloff=5

" Move lines up and down "
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

set ttyfast
set laststatus=2

set showmode
set showcmd