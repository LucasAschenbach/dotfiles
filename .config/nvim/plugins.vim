call plug#begin()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Schemes
Plug 'cocopon/iceberg.vim'
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/everforest'
Plug 'dracula/vim'
Plug 'vv9k/vim-github-dark'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'

" Custom icons
Plug 'ryanoasis/vim-devicons'

" Smooth scrolling
Plug 'psliwka/vim-smoothie'

let g:smoothie_update_interval = 16 " 60fps
let g:smoothie_speed_constant_factor = 80

" Highlight key letters for jumping in line
Plug 'unblevable/quick-scope'
Plug 'luochen1990/rainbow'

" Colorize color codes
Plug 'NvChad/nvim-colorizer.lua'

" Custom status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Custom tab bar
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Display git diff next to line numbers
Plug 'airblade/vim-gitgutter'

" Indent guides
Plug 'lukas-reineke/indent-blankline.nvim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'universal-ctags/ctags'

" File Explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'scrooloose/nerdtree-project-plugin'

" Tmux Integration
Plug 'christoomey/vim-tmux-navigator'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Dev-Tools
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing Tools
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Code Completion
Plug 'ervandew/supertab'
Plug 'github/copilot.vim'
Plug 'dbeniamine/cheat.sh-vim'

" Language/Framework specific
Plug 'natebosch/vim-lsc'

" Markdown
Plug 'iamcco/markdown-preview.nvim'

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Applications
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Note Taking
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

let g:notes_tab_indents = 0

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Post install configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent-blankline
lua << EOF
require("indent_blankline").setup {
    char = "▏",
    buftype_exclude = {"terminal"},
    filetype_exclude = {"help", "packer", "NvimTree", "Trouble"},
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    space_char_blankline = " ",
}
EOF

" Colorizer
lua require'colorizer'.setup()

" NERDTree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

