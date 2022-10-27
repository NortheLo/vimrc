:set number
:syntax on
:set nocompatible
:set autoindent
:set smartindent
:set hlsearch
:set incsearch

au FileType c,cpp,hpp,h call rainbow#load()

:nmap <F8> :TagbarToggle<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim'

Plug 'preservim/tagbar'

Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'

Plug 'preservim/NERDTree'

Plug 'frazrepo/vim-rainbow'

call plug#end()
