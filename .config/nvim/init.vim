"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let configs = [
      \ 'plugins.vim',
      \]

let path = stdpath('config')
for files in configs
  for f in glob(path.'/'.files, 1, 1)
    exec 'source' f
  endfor
endfor

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

" Editor Appearance
syntax enable
set termguicolors
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
highlight Cursorline cterm=NONE ctermbg=236
set foldmethod=syntax
set foldlevelstart=20
highlight Folded ctermbg=236

" Text Styling, Formatting
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

" Save using cmd+s
map <M-s> :w<kEnter>
imap <M-s> <Esc>:w<kEnter>i

" Find files using Telescope command-line sugar.
nnoremap <C-p> :Telescope find_files<CR>
inoremap <C-p> <Esc>:Telescope find_files<CR>
vnoremap <C-p> :Telescope find_files<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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

