" Author: Takatsugu Yoneya

syntax on "シンタックスハイライトを有効

set autoindent   " 改行時に前の行のインデントを計測
set autoread     " 自動的にファイルを読み直す
set autowrite    " バッファを自動的に保存
set cursorcolumn " カーソル位置の列を強調表示 TODO 消したり表示できたり
set cursorline   " カーソル位置の行を強調表示 TODO 消したり表示できたり
set expandtab    " Ctrl + v tab でタブ文字を入力できる
set hidden       " b commandでbufferを切り替えるときに編集中ファイルを保存しなくてもよくする
set hlsearch     " 検索結果をハイライトさせる
set ignorecase   " 検索時に大文字小文字を無視する
set incsearch    " インクリメンタルサーチ（最初の文字時点で検索が開始）
set list         " 不可視文字を表示させる
set nobackup     " バックアップファイルを出力させなくさせる
set noswapfile   " swapファイルを出力させなくさせる
set nu           " 行番号を表示させる
set showcmd      " 入力中のコマンドを表示させる
set showmatch    " 対応する括弧やブレースをハイライトさせる
set smartcase    " 大文字での検索時に大文字小文字を無視させない
set smartindent  " 適切な箇所のインデントを増減させる C構文に対応
set title        " タイトルを表示させる
set wrapscan     " 検索時に最後まで行ったら最初に戻る

" バックスペースで削除できる対象
set backspace=indent,eol,start
" vimの読み取り文字コード
set encoding=utf8
" ファイル書き込み時の文字コード
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
" 改行コード
set fileformats=unix,dos,mac
" ステータスライン表示設定
set laststatus=2
" 不可視文字の可視化設定
set listchars=tab:>-,eol:↲,nbsp:%,extends:>,precedes:<
" カーソルが括弧に飛ぶ時間の設定
set matchtime=1
" マウス設定
set mouse=a
" 進数を設定
set nrformats=octal
" 補完メニューの高さ
set pumheight=10
" 自動インデントの長さ設定
set shiftwidth=2
" いくつの連続した空白を一回で削除できるようにするか
set softtabstop=2
" 画面上で表示する一つのタブの幅設定
set tabstop=4
" 行移動設定
set whichwrap=h,l,b,s,[,],<,>
" コマンドラインモードでのファイル名補完有効設定
set wildmenu wildmode=list:longest

""""""""""""""""
" Keybinds
"
" OSXとそれ以外でキーバインドを変更する
if system('uname') =="Darwin\n"
  colorscheme hybrid
  " TODO そのうちkeybind変える
  nnoremap <C-n> gt
  nnoremap <C-p> gT
  inoremap <expr><C-g>  neocomplcache#undo_completion()
  inoremap <expr><C-l>  neocomplcache#complete_common_string()
else
  colorscheme molokai
  nnoremap <C-n> gt
  nnoremap <C-p> gT
  inoremap <expr><C-g>  neocomplcache#undo_completion()
  inoremap <expr><C-l>  neocomplcache#complete_common_string()
endif

" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

" 英字キーボードに合わせてコロンとセミコロンを入れ替える
noremap ; :

" reload
nnoremap ,r :<C-u>source $HOME/.vimrc<CR>

" highlight解除キー
nnoremap ,h :noh<CR>

" 1行ヤンク
nnoremap Y y$

" 数値のインクリメント
nnoremap + <C-a>
nnoremap - <C-x>

""""""""""""""""
" DEIN
"
if &compatible
  set nocompatible
endif
filetype plugin indent on

set runtimepath+=~/.vim/dein/dein.vim
call dein#begin(expand('~/.vim/dein'))
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/neocomplcache.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('groenewege/vim-less')
  call dein#add('itchyny/lightline.vim')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('jwalton512/vim-blade')
  call dein#add('kannokanno/previm')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('nikvdp/ejs-syntax')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('posva/vim-vue')
  call dein#add('rhysd/accelerated-jk')
  call dein#add('scrooloose/nerdtree')
  call dein#add('thinca/vim-splash')
  call dein#add('tpope/vim-fugitive')
  call dein#add('twitvim/twitvim')
  call dein#add('tyru/open-browser.vim')
call dein#end()

if dein#check_install()
  call dein#install()
endif

""""""""""""""""""
" autocmd の設定一覧
"
augroup vimrc_loading
  autocmd!
  autocmd Bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd BufNewFile,BufRead vim set expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.coffee set filetype=coffee expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.ejs set filetype=ejs expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead .env.* set filetype=sh expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.html set filetype=html expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.less set filetype=less expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.md set filetype=markdown expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.php set filetype=php noexpandtab shiftwidth=4 softtabstop=4
  autocmd BufNewFile,BufRead *.py set filetype=python expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.blade.php set filetype=php expandtab shiftwidth=2 softtabstop=2
  autocmd BufNewFile,BufRead *.vue set filetype=vue expandtab shiftwidth=2 softtabstop=2
augroup END

""""""""""""""""""
" lightlineの設定
"

set t_Co=256

let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'modified': 'LightlineModified',
        \   'readonly': 'LightlineReadonly',
        \   'fugitive': 'LightlineFugitive',
        \   'filename': 'LightlineFilename',
        \   'fileformat': 'LightlineFileformat',
        \   'filetype': 'LightlineFiletype',
        \   'fileencoding': 'LightlineFileencoding',
        \   'mode': 'LightlineMode'
        \ }
        \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
    return fugitive#head()
  else
    return ''
  endif
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

"""""""""""""""""""
" NERDTREEの設定
"

" Ctr + t でTreeを開けるようにする
nnoremap <silent><C-t> :NERDTreeTabsToggle<CR>

" vim起動時にconsoleをスタートアップ
let g:nerdtree_tabs_open_on_console_startup = 1

" 隠しファイルを表示
let NERDTreeShowHidden = 1

" NerdTreeの幅設定
let NERDTreeWinSize = 25

" DefaultでBookmarkを表示
let g:NERDTreeShowBookmarks = 1

" アイコンを指定
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"""""""""""""""""""
" NEOCOMPLCACHEの設定
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


""""""""""""""""""""
" vim-gitgutterの設定
"

" vim起動時にgit差分をハイライトで表示する
let g:gitgutter_highlight_lines = 1

" 更新時間を早める
set updatetime=250

filetype plugin indent on

"""""""""""""""""""
" twitvimの設定
"

" twitvimを有効にする
let g:twit_vim_enable_python = 1
let twitvim_count = 40

nnoremap ,tl :<C-u>SetLoginTwitter<CR>
nnoremap ,tp :<C-u>PosttoTwitter<CR>
nnoremap ,tf :<C-u>FriendsTwitter<CR>
nnoremap ,tn :<C-u>NextTwitter<CR>

""""""""""""""""""
" Unite.vim の設定
"

" 入力モードでスタートさせる
let g:unite_enable_start_insert=1

" バッファ一覧
noremap ,ub :Unite buffer<CR>
" ファイル一覧
noremap ,uf :Unite -buffer-name=file file<CR>
" 最近使ったファイル一覧
noremap ,ur :Unite file_mru<CR>
" sourceを今見ているディレクトリ以下にする
noremap ,ucd :<C-u>UniteWithBufferDir file -buffer-name=file<CR>

" ウィンドウを分割して開く
au Filetype unite nnoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')
au Filetype unite inoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')

" esc2回押しで終了
au filetype unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au filetype unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

""""""""""""""""
" accelerated-jk
"
nmap j <Plug>(accelerated_jk_gj_position)
nmap k <Plug>(accelerated_jk_gk_position)
nmap <Down> <Plug>(accelerated_jk_gj_position)
nmap <Up> <Plug>(accelerated_jk_gk_position)

""""""""""""""""
" vim-markdownの設定
"
let g:previm_open_cmd = 'open -a Vivaldi'

""""""""""""""""
" vim-splashの設定
"

let g:splash#path="~/dotfiles/src/vim_intro.txt"
