"###################################################
"################## PLUGINS ########################
"###################################################

" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/local/share/nvim/plugged')

" Style
Plug 'vim-airline/vim-airline' " stylish status bar and more
Plug 'vim-airline/vim-airline-themes' " themes for airline status bar
Plug 'dracula/vim', { 'as': 'dracula' } "Dracula theme for VIM
Plug 'ryanoasis/vim-devicons' " cool icons in vim
Plug 'mg979/vim-xtabline' " better looking tabline
Plug 'psliwka/vim-smoothie' " smooth scrolling in vim


" Functionality
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code Completion
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy searcher
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim' " search and replace
Plug 'christoomey/vim-tmux-navigator' " easy integration with tmux
Plug 'mhinz/vim-signify' " show change status from VSC
Plug 'tpope/vim-commentary' " easyliy comment and uncomment code
Plug 'tpope/vim-rails' " syntax highlighting and other usefull rails things
Plug 'tpope/vim-dispatch' " asynchronousely dispatch commands
Plug 'tpope/vim-endwise' " autoclose ruby syntax
Plug 'tpope/vim-surround' " deal with surround actions
Plug 'tpope/vim-fugitive' " handle git from vim
Plug 'tpope/vim-repeat' " improved vim repeat
Plug 'tpope/vim-eunuch' " UNIX commands in vim
Plug 'tpope/vim-sleuth' " better automate indenting
Plug 'junegunn/gv.vim' " a git commit browser
Plug 'rhysd/git-messenger.vim' " shows git commit message under the cursor
Plug 'liuchengxu/vista.vim' " symbol navigation and tag bar replacement with LSP functionality
Plug 'liuchengxu/vim-which-key' " a spacemacs like space navigation
Plug 'AndrewRadev/tagalong.vim' " automatically rename the closing tag
Plug 'ntpeters/vim-better-whitespace' " highlight whitespace
Plug 'norcalli/nvim-colorizer.lua' " neovim color highlighter
Plug 'voldikss/vim-floaterm' " a floating vim terminal
Plug 'moll/vim-bbye' " delete the buffer not the window
Plug 'wesQ3/vim-windowswap' "easily move windows and swap them
Plug 'kevinhwang91/rnvimr' "use ranger inside vim

" Syntax highlighting
Plug 'sheerun/vim-polyglot' " Bundled syntax highlighting for many languages. Lazy loaded.

call plug#end()

"###################################################
"############## PLUGINS CONFIGURATIONS #############
"###################################################

" ------COC SETTINGS------
source $HOME/.config/nvim/config/plugins/coc.vim

" -------FZF----------
source $HOME/.config/nvim/config/plugins/fzf.vim

" -------Vista----------
source $HOME/.config/nvim/config/plugins/vista.vim

" -------Airline----------
source $HOME/.config/nvim/config/plugins/airline.vim

" -------Devicons----------
source $HOME/.config/nvim/config/plugins/devicons.vim

" -------FloatTerm----------
source $HOME/.config/nvim/config/plugins/floatterm.vim

" -------RNVIMR----------
source $HOME/.config/nvim/config/plugins/rnvimr.vim

" -------XTabLine----------
source $HOME/.config/nvim/config/plugins/xtabline.vim

" -------Window swap----------
source $HOME/.config/nvim/config/plugins/windowswap.vim

" ------Git messenger----------
source $HOME/.config/nvim/config/plugins/gitmessenger.vim
