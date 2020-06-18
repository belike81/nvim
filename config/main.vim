"###################################################
"################## DEFAULTS #######################
"###################################################

" enable syntax highlighting
syntax on
"
" set colorscheme
colorscheme dracula

" tab Settings
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set shiftround

" set default encoding
set encoding=utf-8

" enable relativenumbers
set number relativenumber

" enable 256 color support with neovim
if has('termguicolors')
  set termguicolors
endif

" autocompletion
set wildmode=longest,list,full

" fix splitting
set splitbelow splitright

" use system clipboard
set clipboard+=unnamedplus

" From Coc Readme
set updatetime=300

" some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" don't display mode in command line (airline already shows it)
set noshowmode

" automatically re-read file if a change was detected outside of vim
set autoread

" no case-sensitive search unless uppercase is present
set ignorecase
set smartcase

" enable mouse scroll
set mouse=a

" allow a new buffer to be opened without saving current
set hidden

" statusline Config
set statusline+=%F
set cmdheight=1

" matching braces/tags
set showmatch

" show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3
endif

" show next 5 columns while side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5
endif
