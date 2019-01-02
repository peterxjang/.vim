set nocompatible
syntax enable
set path+=**
set wildmenu
set wildignore+=node_modules/*
set number
colorscheme codedark
set splitbelow
set smartindent
set autoindent
filetype indent on
filetype plugin on
set incsearch
set hlsearch
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autowrite
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swap//
set undodir=~/.vim/.undo//
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
endif
