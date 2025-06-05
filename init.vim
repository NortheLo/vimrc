" Run when COC doesnt work
":call coc#util#install() 

" disable Vi compatibility
set  nocompatible

:colorscheme vim 

syntax enable

set syntax

set number

set wrap

set ruler

set autoindent

set smartindent

set showmode

set relativenumber

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

" Set terminal into insert mode
autocmd TermOpen * startinsert

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

