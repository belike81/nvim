"###################################################
"################## KEY BINDINGS ###################
"###################################################

let mapleader = ";"
let maplocalleader = ";"

nmap <leader><leader> :

"LeaderF Mappings
noremap <leader>f :FZF!<CR>
noremap <leader>s :Rg!
noremap <leader>* :<C-U><C-R>=printf("Rg! %s", expand("<cword>"))<CR>

"Dispatch mapping
" noremap <leader>g :Start tig status<CR>

" NERDTree mapping
noremap <leader>t :NERDTreeFind<CR>

" Ranger mapping
noremap <leader>r :FloatermNew ranger<CR>

" Lazydocker
" nnoremap <silent> <Leader>d :call ToggleLazyDocker()<CR>
noremap <leader>d :FloatermNew lazydocker<CR>

" Lazygit
" nnoremap <silent> <Leader>g :call ToggleLazyGit()<CR>
noremap <leader>g :FloatermNew lazygit<CR>

" Coc
noremap <leader>l :CocList<CR>

" Next/previous buffer
noremap<silent> <C-[> :bnext<CR>
noremap<silent> <C-]> :bprevious<CR>
noremap<silent> <leader>b :Buffers<CR>


noremap <leader>w :w<cr>
noremap <leader>k :bd<cr>
noremap <leader>o :only<cr>

" Clear search highlight after searching
nnoremap<silent> <cr> :noh<cr><cr>

noremap <leader><TAB> :e#<cr>

" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" Keys for formatting selection with coc-prettier
vmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Alias replace all to S
nnoremap S :%s//g<Left><Left>

" Alias write to W
nnoremap W :w<CR>

" Alias write and quit to Q
nnoremap Q :wq<CR>
