set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set fenc=utf-8
set fileencoding=utf-8
set fileformat=unix
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:-,eol:↲,nbsp:%,extends:>,precedes:<
set mouse=a
set nobackup
set noswapfile
set nrformats-=octal
set nu
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smartindent
set statusline=%<%F\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set tabstop=4
set title
set whichwrap=b,s,[,],<,>
set wrapscan
set wildmode=list:longest

" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

syntax on
