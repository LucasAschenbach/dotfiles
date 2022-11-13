"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let configs = [
      \ 'plugins.vim',
      \ 'keymaps.vim',
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
set colorcolumn=80
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

set ttyfast
set laststatus=2

set showmode
set showcmd

