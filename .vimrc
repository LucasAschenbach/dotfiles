set nocompatible

" Editor Appearance "
syntax enable
set number relativenumber
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

map <space> /
map <C-space> ?

map 0 ^
 
" Move between windows "
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move lines up and down "
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
inoremap <S-j> <Esc>:m .+1<CR>==gi
inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

set ttyfast
set laststatus=2

set showmode
set showcmd
