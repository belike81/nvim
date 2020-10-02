let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-git',
  \ 'coc-gitignore',
  \ 'coc-docker',
  \ 'coc-sh',
  \ 'coc-vimlsp',
  \ 'coc-solargraph',
  \ 'coc-tabnine',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-angular',
  \ 'coc-explorer',
  \ 'coc-floaterm',
  \ 'coc-marketplace'
  \ ]

" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
