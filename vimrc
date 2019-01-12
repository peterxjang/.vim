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
highlight CursorLine ctermbg=none
autocmd InsertEnter * highlight CursorLine ctermbg=240
autocmd InsertLeave * highlight CursorLine ctermbg=none
inoremap <C-c> <Esc>
" Linting
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\}
let g:ale_fix_on_save = 1
" Fuzzy finding
set rtp+=~/.fzf
" Shortcuts
let mapleader = "\<Space>"
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>a :Ag<CR>
