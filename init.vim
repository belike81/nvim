source $HOME/.config/nvim/config/key-bindings.vim " This script contains general mappings
source $HOME/.config/nvim/config/plugins.vim " This script contains  a list of Vim-Plugged plugins
source $HOME/.config/nvim/config/main.vim " This script contains general neovim settings
source $HOME/.config/nvim/config/auto-commands.vim " This script contains plugin specific settings
source $HOME/.config/nvim/config/functions.vim " This script contains functions

if exists('g:vscode')
  " VS COde extension
  source $HOME/.config/nvim/config/vscode/settings.vim
endif
