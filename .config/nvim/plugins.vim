call plug#begin()

" View documentation by pressing 'K' on word
Plug 'dbeniamine/cheat.sh-vim'

" Note Taking
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

let g:notes_tab_indents = 0

" File manager
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let g:fzf_preview_window = ['up:40%', 'ctrl-p']

" Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'scrooloose/nerdtree-project-plugin'
Plug 'ryanoasis/vim-devicons'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

" Highlight key letters for jumping in line
Plug 'unblevable/quick-scope'
Plug 'luochen1990/rainbow'

" let g:rainbow_active = 1

" Colorize color codes
Plug 'NvChad/nvim-colorizer.lua'

" Custom status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Minimap
" Plug 'wfxr/minimap.vim'

" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1
" let g:minimap_git_colors = 1
" let g:minimap_highlight_search = 1

" Color Schemes
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'dracula/vim'
Plug 'vv9k/vim-github-dark'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

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
Plug 'universal-ctags/ctags'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context'

" Dart + Flutter
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" LaTeX
Plug 'lervag/vimtex'

" Solidity + Ethereum
Plug 'tomlion/vim-solidity'

" Jupyter Notebook
Plug 'jupyter-vim/jupyter-vim'

" Julia
Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

" Colorizer
lua require'colorizer'.setup()

" NERDTree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

