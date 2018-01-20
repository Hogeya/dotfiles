" Author: Takatsugu Yoneya

""""""""""""""""
" Keybinds
"
" mapleader
let mapleader="\<Space>"

" OSXとそれ以外でキーバインドを変更する
if system('uname') =="Darwin\n"
  colorscheme hybrid
  " TODO そのうちkeybind変える
  nnoremap <Leader>n gt
  nnoremap <Leader>p gT
  inoremap <expr><C-g>  neocomplcache#undo_completion()
  inoremap <expr><C-l>  neocomplcache#complete_common_string()
else
  colorscheme molokai
  nnoremap <Leader>n gt
  nnoremap <Leader>p gT
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

" cursorlineとcursorcolumnのon/off
nnoremap <Leader>c :<C-u>setlocal cursorline! cursorcolumn!<CR>

" Ctrl-wのキーバインド設定
nnoremap <Leader>w <C-w>
