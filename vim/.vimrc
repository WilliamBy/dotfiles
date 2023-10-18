let mapleader=" "
" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

inoremap jk <ESC>
inoremap <C-S> <ESC>:w<CR>
inoremap <C-A> <ESC>A

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <leader>wv <C-w>v
nnoremap <leader>wh <C-w>s
nnoremap <leader>wq <C-w>q
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

nnoremap <leader>nh :nohl<CR>

nnoremap <C-X> :bnext<CR>
nnoremap <C-Z> :bprevious<CR>
nnoremap <leader>bw :w<CR>

""""""""""""""""""""""""""""""
" => User Interface
""""""""""""""""""""""""""""""
" Linux has termguicolors but it ruins the colors...
set termguicolors
" Always show current position
set ruler
set hlsearch

" Height of the command bar
set cmdheight=1

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

set number
set relativenumber

set tabstop=4
set shiftwidth=4
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab

set autoindent
set smartindent

set nowrap

set cursorline
set nocursorcolumn

set splitright
set splitbelow

set ignorecase
set smartcase

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula
