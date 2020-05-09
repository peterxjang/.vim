set nocompatible
set number
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autowrite
set splitbelow
set splitright
set noequalalways
set smartindent
set autoindent
set backspace=indent,eol,start
set incsearch
set ignorecase
set smartcase
set hlsearch
set laststatus=0
filetype indent on
filetype plugin on
set clipboard=unnamed
set undofile
set viminfo^=%
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swap//
set undodir=~/.vim/.undo//
" Change paste to auto indent
nnoremap p p=`]
" Fold code
set foldmethod=indent
set foldlevelstart=20
augroup AutoSaveFolds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent loadview 1
augroup END
" Find files
set path+=**
set wildmenu
set wildignore+=node_modules/*
" Colors
syntax enable
colorscheme codedark
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
set cursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
" add additional file types for syntax highlighting
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
au BufNewFile,BufRead *.json.jb set ft=ruby
" Modify key behavior
imap <C-c> <Esc>
nnoremap <C-c> :noh<CR><C-c>
inoremap <C-f> <C-o>l
inoremap <C-b> <C-o>h
set virtualedit=onemore
" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" Linting
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'vue': ['prettier'],
\   'elixir': ['mix_format'],
\   'ruby': ['rufo'],
\}
let g:ale_pattern_options = {'\.min.js$': {'ale_enabled': 0}}
let g:ale_maximum_file_size = 102400
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
" Emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" Fuzzy finding
set rtp+=~/.fzf
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)
" Shortcuts
let mapleader = "\<Space>"
nnoremap <leader>s :w<CR>
" nnoremap <leader>t :terminal ++rows=10<CR>
nnoremap <leader>t :bot terminal<CR>
nnoremap <leader>f :Files --exclude-standard --others --cached<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>a :Ag<CR>
