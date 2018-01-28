" Pathogen

execute pathogen#infect()
syntax on
filetype plugin indent on

" Markdown extension *.md is also one for Modula
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Adoc slides in Presenting.vim
au FileType asciidoc let b:presenting_slide_separator = '\v(#)+'

" Tabs vs spaces settings
:set tabstop=4 shiftwidth=4 expandtab

" numbers on
:set number
