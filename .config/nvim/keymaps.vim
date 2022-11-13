let mapleader=" "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Native
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map 0 ^

inoremap jj <esc>j

" Save using cmd+s
map <M-s> :w<kEnter>
imap <M-s> <Esc>:w<kEnter>i

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Barbar
nnoremap <silent> <M-,> <Cmd>BufferPrevious<CR>
nnoremap <silent> <M-.> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent> <M-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent> <M->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent> <M-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent> <M-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent> <M-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent> <M-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent> <M-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent> <M-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent> <M-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent> <M-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent> <M-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent> <M-0> <Cmd>BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent> <M-p> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent> <M-w> <Cmd>BufferClose<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-p> <Cmd>BufferPick<CR>
inoremap <silent> <C-p> <Cmd>BufferPick<CR>
vnoremap <silent> <C-p> <Cmd>BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <leader>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <leader>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <leader>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <leader>bw <Cmd>BufferOrderByWindowNumber<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

