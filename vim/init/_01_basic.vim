" Author: Takatsugu Yoneya

syntax on "シンタックスハイライトを有効
if system('uname') != "Darwin\n"
  colorscheme molokai "TODO なぜかcygwin, centosだとmolokaiを挟まないとhybridが効かない
endif
colorscheme iceberg "カラースキーマを有効
let g:hybrid_custom_term_colors = 1

set autoindent   " 改行時に前の行のインデントを計測
set autoread     " 自動的にファイルを読み直す
set autowrite    " バッファを自動的に保存
set cursorcolumn " カーソル位置の列を強調表示
set cursorline   " カーソル位置の行を強調表示
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

" □や○文字が崩れる問題を解決"
set ambiwidth=double
" バックスペースで削除できる対象
set backspace=indent,eol,start
" ヤンクした際にクリップボードにコピーする設定
set clipboard=unnamed,autoselect
" vimの読み取り文字コード
set encoding=utf8
" 保存時の文字コード
set fileencoding=utf8
" ファイル書き込み時の文字コード
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
" 改行コード
set fileformats=unix,dos,mac
" ステータスライン表示設定
set laststatus=2
" 不可視文字の可視化設定
set listchars=tab:\▸\ ,eol:↲
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
" 更新時間を早める
set updatetime=250
" 行移動設定
set whichwrap=h,l,b,s,[,],<,>,~
" コマンドラインモードでのファイル名補完有効設定
set wildmenu wildmode=list:longest
