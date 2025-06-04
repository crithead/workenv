set nocompatible              " be iMproved, required
"filetype off                  " required

set autoindent
set smartindent
"set expandtab
set hidden
set hlsearch
set ignorecase
set lazyredraw
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set nobackup
set nowrap
set number
set pastetoggle=<F2>
set tabstop=4
set shiftwidth=4
set showmatch
set textwidth=80
set vb t_vb=
set visualbell
set noerrorbells
set wildignore=*.swp,*.pyc,*.class,*.o

colorscheme yk
syntax on

"setlocal spell spelllang=en_us
"set spell

autocmd filetype python set expandtab

" default mapleader is '\'
"let mapleader=","

" Macro definitions (permanent)
"let @t=':CommandT'

" Key mappings
" F1 -> :help
nnoremap <F2> :set syntax=off<CR>
nnoremap <F3> :set syntax=asciidoc<CR>
nnoremap <F4> :set expandtab<CR>

nnoremap <F5> :CommandT<CR>
" F6 -> pastetoggle
nnoremap <F7> :bdelete<CR>
"unmap <F8>

nnoremap <F9> :bnext<CR>
nnoremap <F10> :bprevious<CR>
nnoremap <F11> :set lines=50 columns=84<CR>
nnoremap <F12> :set lines=50 columns=108<CR>
