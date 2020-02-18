"###################################################
"################## AUTO COMMANDS ##################
"###################################################

" Close if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Setup formatexpr specified filetype(s).
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')

" Update signature help on jump placeholder
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Start in insert mode when editing git commit
autocmd! VimEnter COMMIT_EDITMSG exec 'norm gg' | startinsert!

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" jump to the last known position when reopening a file.
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif

" trigger autoread when changing buffers while in vim
autocmd FocusGained,BufEnter * :checktime

