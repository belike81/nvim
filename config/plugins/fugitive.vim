augroup FugitiveMappings
  autocmd!
  autocmd FileType fugitive nmap <buffer> <Tab> =
  autocmd FileType fugitive nmap <buffer> c :Git commit<CR>
augroup
