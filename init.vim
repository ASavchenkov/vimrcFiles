set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'https://github.com/tpope/vim-dispatch.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/kien/rainbow_parentheses.vim.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/Shougo/deoplete.nvim.git'
Plug 'https://github.com/zchee/deoplete-jedi.git'
Plug 'https://github.com/zchee/deoplete-clang.git'
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'scrooloose/nerdcommenter'
Plug 'https://github.com/fboender/bexec.git'
Plug 'floobits/floobits-neovim'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-3.9/lib/libclang.so.1"
let g:deoplete#sources#clang#clang_header = "/usr/lib/llvm-3.9/lib/clang"

let g:jedi#completions_enabled=0
let g:jedi#use_splits_not_buffers="winwidth"
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
filetype plugin indent on

syntax on
set number
set backspace=2
set clipboard=unnamedplus
set mouse=a

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall -Wextra -Wpedantic'


set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
au VimEnter * RainbowParenthesesToggle

hi Comment ctermfg=LightBlue
hi Directory ctermfg=LightBlue

set whichwrap+=<,>,h,l,[,]

let bexec_splitdir="ver"
setl updatetime=300
autocmd CursorHold * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

map <up> gk
map <down> gj

