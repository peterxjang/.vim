" Basic settings
set nocompatible
set number
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autowrite
set splitbelow
set smartindent
set autoindent
set incsearch
set hlsearch
filetype indent on
filetype plugin on
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swap//
set undodir=~/.vim/.undo//
" Find files
set path+=**
set wildmenu
set wildignore+=node_modules/*
" Colors
syntax enable
colorscheme codedark
set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
" Modify escape
imap <C-c> <Esc>
inoremap <Esc> <Esc>:w<CR>
nnoremap <C-c> :noh<CR><C-c>
" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" Linting
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'vue': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
" Emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" Fuzzy finding
set rtp+=~/.fzf
" Shortcuts
let mapleader = "\<Space>"
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>a :Ag<CR>
