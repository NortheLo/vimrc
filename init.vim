" disable Vi compatibility
set  nocompatible

set syntax

set number

set wrap

set ruler

set autoindent

set smartindent

set showmode

" always show status line
set laststatus=2

set showcmd

set report=0

" show suggestions 
set wildmenu
set wildmode=full

" highlight column 80
set colorcolumn=80

set spelllang=en_us

" for case-insensitive searching
set ignorecase

" highlight search matches
set incsearch

" highlight search matches in all windows
set hlsearch

" be seen on the same screen
set  showmatch
" 1/10 of a sec to show the matching paren, when 'showmatch' is set
" default is 5 (1/2 of a sec); set this to 8 (8/10 or 4/5 of a sec)
set  matchtime=8

" turns on filetype detection, which invokes the plugins for specific
" filetypes - this enables the installed plugins - Note that the filetype
" plugin handles setup of the 'suffixesadd' and 'path' options for us
filetype  plugin on
" enable language-dependent indenting
filetype  plugin indent on

" Set the commands to save in history
set history=100

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType c,cpp,hpp,h,rs call rainbow#load()

:nmap <F8> :TagbarToggle<CR>

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'preservim/tagbar'

Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'

Plug 'preservim/NERDTree'

Plug 'frazrepo/vim-rainbow'

Plug 'wbthomason/packer.nvim'

Plug 'neovim/nvim-lspconfig'

call plug#end()
