scriptencoding utf-8

" ===================================================
" Author: Takatsugu Yoneya
" Update Time: 2017-06-04
" ===================================================

if 1
	set nocompatible
	if has('vim_starting')
		set runtimepath+=~/.vim/bundle/neobundle.vim
	endif

	call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	NeoBundle 'Shougo/neocomplete'
	NeoBundle 'Shougo/neocomplcache.vim'
	NeoBundle 'Shougo/neosnippet-snippets'
	NeoBundle 'scrooloose/syntastic'
	NeoBundle 'Shougo/neosnippet'
	NeoBundle 'tomasr/molokai'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'jistr/vim-nerdtree-tabs'
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'mattn/emmet-vim'
	NeoBundle 'othree/html5.vim'
	NeoBundle 'kchmck/vim-coffee-script'
	NeoBundle 'scrooloose/syntastic.git'
	NeoBundle 'Shougo/neomru.vim'
	NeoBundle 'tomtom/tcomment_vim'
	NeoBundle 'bronson/vim-trailing-whitespace'
	NeoBundle 'nathanaelkane/vim-indent-guides'
	NeoBundle 'tpope/vim-fugitive'
	call neobundle#end()

	filetype plugin indent on
	NeoBundleCheck
	syntax on
	set number
	set ruler
	set encoding=utf-8
	set autoindent
	set wrapscan
	set showmatch
	set showmode
	set title
	set tabstop=4
	set noswapfile
	set smartcase
	set hlsearch
	set background=dark
	set hidden
	set list
	set listchars=tab:»-,trail:-,nbsp:%,eol:↲
	set whichwrap=b,s,h,l,<,>,[,]
	let g:indent_guides_start_level=2
	highlight LineNr ctermfg=darkyellow
	colorscheme molokai
	set t_Co=256

	""""""""""""""""""""""""""""""""
	" neocomplcacheの設定
	"""""""""""""""""""""""""""""""
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 0
	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 1
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
	" Set minimum syntax keyword length.
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
	" Define dictionary.
	let g:neocomplcache_dictionary_filetype_lists = {
		\ 'default' : ''
		\ }

	" Plugin key-mappings.
	inoremap <expr><C-g>     neocomplcache#undo_completion()
	inoremap <expr><C-l>     neocomplcache#complete_common_string()

	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
		return neocomplcache#smart_close_popup() . "\<CR>"
	endfunction
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()

	""""""""""""""""""""""""""""""""
	" Unit.vimの設定
	""""""""""""""""""""""""""""""""
	" 入力モードでスタート
	let g:unite_enable_start_insert=1
	" バッファ一覧
	noremap <C-P> :Unite -buffer<CR>
	" ファイル一覧
	noremap <C-N> :Unite -buffer-name=file file<CR>
	" 最近使ったファイル一覧
	noremap <C-Z> :Unite file_mru<CR>
	noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
	" ウィンドウを分割して開く
	au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
	au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
	" " ウィンドウを縦に分割して開く
	au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
	au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
	" " ESCキーを2回押すと終了する
	au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
	au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
endif
