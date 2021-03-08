" Settings

let g:mapleader = "\<Space>"            " set leader key
syntax enable                           " Enables syntax highlighing
filetype plugin indent on
set hidden                              " Required to keep multiple buffers open multiple buffers
set noswapfile                          " No swapfile
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number relativenumber               " Line numbers
set showtabline=1                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autochdir                           " Your working directory will always be the same as your working directory
set scrolloff=4
set colorcolumn=120
set title
set iskeyword+=_
set iskeyword+=-                      	" treat dash separated words as a word text object"
set hlsearch
set softtabstop=0
set ignorecase
set smartcase
set incsearch
set shortmess+=c
cmap w!! w !sudo tee %
set foldmethod=syntax                   " Fold method follows syntax specific
set foldlevel=99
set cursorline                          " Enable highlighting of the current line
set nocompatible
set cmdheight=1                         " Reduce command line height size to 1
highlight clear SignColumn              " Change the column on the left to match theme color
set showtabline=0                       " Disable the top tab line
"set nowrap                            " Display long lines as just one line
"set signcolumn=no                     " Git column

"highlight SignColumn guibg=blue ctermbg=white " Edit the sign column properties

" Display Red for trailling spaces
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

"hi LineNr ctermbg=NONE guibg=NONE

" Go into normal mode after 5 seconds on inactivity
au CursorHoldI * stopinsert
au InsertEnter * let updaterestore=&updatetime | set updatetime=5000
au InsertLeave * let &updatetime=updaterestore



" FOLD SETTINGS
" set foldlevelstart=1
" set foldmethod=syntax
" set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
" set foldlevel=2
