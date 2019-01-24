" Basic settings
set nocompatible
set number
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autowrite
set splitbelow
set splitright
set smartindent
set autoindent
set incsearch
set hlsearch
filetype indent on
filetype plugin on
set clipboard=unnamed
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swap//
set undodir=~/.vim/.undo//
" Fold code
set foldmethod=indent
set foldlevelstart=20
" Find files
set path+=**
set wildmenu
set wildignore+=node_modules/*
" Colors
syntax enable
colorscheme codedark
hi StatusLineTerm ctermbg=none ctermfg=gray
hi StatusLineTermNC ctermbg=none ctermfg=black
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
" Modify escape
imap <C-c> <Esc>
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
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
" Shortcuts
let mapleader = "\<Space>"
nnoremap <leader>s :w<CR>
nnoremap <leader>t :terminal ++rows=10<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>a :Ag<CR>
