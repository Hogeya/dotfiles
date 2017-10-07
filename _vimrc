set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set cursorcolumn
set cursorline
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
set wildmode=list:longest
set wrapscan

" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

" 英字キーボードに合わせてコロンとセミコロンを入れ替える
noremap ; :

syntax on

colorscheme molokai

""""""""""""""""
" NEOBUNDLE
"

set nocompatible
filetype plugin indent off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/neocomplcache'
	NeoBundle 'airblade/vim-gitgutter'
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

" Ctr + r でTreeを開けるようにする
nnoremap <silent><C-t> :NERDTreeToggle<CR>

" 隠しファイルを表示
let NERDTreeShowHidden = 1

" NerdTreeの幅設定
let NERDTreeWinSize = 20

"""""""""""""""""""
" NEOCOMOLCACHEの設定
"

" AcpComplpopを無効化
let g:acp_enableAtStartup = 0
" 起動時にneocomplcacheを有効
let g:neocomplcache_enable_at_startup = 1
" 大文字が入力されるまで大文字小文字の区別を無視
let g:neocomplcache_enable_smart_case = 1
" _区切りの補完を有効
let g:neocomplcache_enable_underbar_completion = 1
" 3文字からシンタックスをキャッシュする
let g:neocomplcache_min_syntax_length = 3
" KeyWordパターンを設定
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

""""""""""""""""""""
" vim-gitgutterの設定
"

" vim起動時にgit差分をハイライトで表示する
let g:gitgutter_highlight_lines = 1
" カラムの背景色を変更
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=brown
highlight GitGutterAdd ctermfg=blue ctermbg=brown

" 更新時間を早める
set updatetime=250

filetype plugin indent on
