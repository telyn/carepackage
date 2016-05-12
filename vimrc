call plug#begin("~/.vim/plugged")

" utilities
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

" colors
Plug 'tomasr/molokai'

" syntax & language support
Plug 'lepture/vim-jinja'
Plug 'User4574/custodian-syntax'
Plug 'telyn/sieve.vim'
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go'
Plug 'vim-scripts/applescript.vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'

call plug#end()

set autochdir

colors molokai
let g:rehash256 = 1


command W :w | :GoTest
