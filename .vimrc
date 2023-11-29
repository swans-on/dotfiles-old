colorscheme elflord
syntax on

call plug#begin()
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'rstacruz/vim-closer'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
call plug#end()

set tabstop=4
set softtabstop=4

" Hybrid numbering
set number relativenumber
set cursorline

filetype indent on
filetype plugin indent on

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Open NerdTree on start and put cursor in other window
autocmd VimEnter * NERDTree | wincmd p

" Close NERDTree if it's the last window
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Move between windows using arrow keys
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
nnoremap <C-Left> <C-w>h
nnoremap <C-Right> <C-w>l

" Open NERDTree with startify if no file specified
autocmd VimEnter *
						\    if !argc()
						\ |    Startify
						\ |    NERDTree
						\ |    wincmd w
						\ |  endif
