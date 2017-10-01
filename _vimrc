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

""""""""""""""""
" NEOBUNDLE
"

set nocompatible
filetype plugin indent off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	NeoBundle 'itchyny/lightline.vim'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'tpope/vim-fugitive'
	call neobundle#end()
endif

""""""""""""""""""
" lightlineの設定
"

if !has('gui_running')
	set t_Co=256
endif

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste'],
	\			  [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\	'gitbranch': 'fugitive#head'
	\ },
	\ }

"""""""""""""""""""
" NERDTREEの設定
"
nnoremap <silent><C-t> :NERDTreeToggle<CR>

filetype plugin indent on
