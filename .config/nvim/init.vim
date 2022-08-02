"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" View documentation by pressing 'K' on word
Plug 'dbeniamine/cheat.sh-vim'

" Note Taking
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" File manager
Plug 'ctrlpvim/ctrlp.vim'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

" Highlight key letters for jumping in line
Plug 'unblevable/quick-scope'

" Custom status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color Schemes
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'dracula/vim'
Plug 'vv9k/vim-github-dark'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

" Editor Appearance "
syntax enable
set background=dark
try
    colorscheme onedark
catch
    highlight Normal ctermbg=Black
    colorscheme torte
endtry
set number relativenumber
set ruler
set visualbell
set scrolloff=7
set cursorline
highlight Cursorline cterm=NONE ctermbg=235
set foldmethod=syntax
set foldlevelstart=20
highlight Folded ctermbg=235

" Text Styling, Formatting"
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set autoindent
set smartindent

" Misc
set hidden
set history=500

set confirm
command! W execute '!sudo tee % > /dev/null' <bar> edit!

" Search
set hlsearch
set incsearch
set ignorecase smartcase

" Controls
set mouse=a
set backspace=indent,eol,start

let mapleader=" "

map 0 ^

inoremap jj <esc>j

map <leader>fi :setlocal foldmethod=indent<cr>
map <leader>fs :setlocal foldmethod=syntax<cr>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Move lines up and down
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

set ttyfast
set laststatus=2

set showmode
set showcmd
