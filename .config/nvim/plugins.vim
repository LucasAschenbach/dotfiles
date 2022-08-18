call plug#begin()

" View documentation by pressing 'K' on word
Plug 'dbeniamine/cheat.sh-vim'

" Note Taking
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" File manager
Plug 'ctrlpvim/ctrlp.vim'
Plug 'universal-ctags/ctags'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

" Highlight key letters for jumping in line
Plug 'unblevable/quick-scope'
Plug 'luochen1990/rainbow'

" Custom status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Minimap
Plug 'wfxr/minimap.vim'

let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
let g:minimap_git_colors = 1
let g:minimap_highlight_search = 1

" Color Schemes
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'dracula/vim'
Plug 'vv9k/vim-github-dark'

" Devtools
Plug 'iamcco/markdown-preview.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'github/copilot.vim'

" Language/Framework specific
Plug 'natebosch/vim-lsc'

" Dart + Flutter
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" LaTeX
Plug 'lervag/vimtex'

" Solidity + Ethereum
Plug 'tomlion/vim-solidity'

call plug#end()
