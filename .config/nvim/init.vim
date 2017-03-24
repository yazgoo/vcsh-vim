"call plug#begin('~/.vim/plugged')
"Plug 'ensime/ensime-vim'
"call plug#end()
syntax on
filetype plugin indent on
source ~/.vimrc.bepo
filetype plugin indent on
syntax on
colorscheme delek
imap ,, <Esc>
set backspace=indent,eol,start
set complete-=i
set smarttab
"set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
inoremap   <Esc>

" Plugins 
" =======
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-pandoc/vim-pandoc', { 'for': [ 'pandoc', 'markdown' ] }
Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': [ 'pandoc', 'markdown' ] }
" General
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'ervandew/supertab'
" Go
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go'
" Scala
Plug 'vim-syntastic/syntastic'
Plug 'ensime/ensime-vim'
Plug 'derekwyatt/vim-scala'
" Groovy
Plug 'modille/groovy.vim'
" Terraform
Plug 'hashivim/vim-terraform'
call plug#end()

call deoplete#enable()

" terraform
let g:terraform_fmt_on_save=1
" ensime
autocmd BufWritePost *.scala silent :EnTypeCheck
nnoremap <localleader>t :EnTypeCheck<CR>
autocmd BufNewFile,BufRead *.conf :set filetype=javascript

highlight SpellBad ctermfg=0
highlight SpellCap ctermfg=0
