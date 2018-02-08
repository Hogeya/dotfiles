" Author: Takatsugu Yoneya

""""""""""""""""
" Keybinds
"
" mapleader
let mapleader="\<Space>"

" <Leader>+r で次タブ
nnoremap <Leader>r gt
" <Leader>+e で前タブ
nnoremap <Leader>e gT

" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk

" 英字キーボードに合わせてコロンとセミコロンを入れ替える
noremap ; :

" reload
nnoremap .r :<C-u>source $HOME/.vimrc<CR>

" highlight解除キー
nnoremap <Leader>h :noh<CR>

" 1行ヤンク
nnoremap Y y$

" 数値のインクリメント
nnoremap + <C-a>
nnoremap - <C-x>

" cursorlineとcursorcolumnのon/off
nnoremap <Leader>c :<C-u>setlocal cursorline! cursorcolumn!<CR>

" Ctrl-wのキーバインド設定
nnoremap <Leader>w <C-w>

" copymode用のfunction <Leader>r で元に戻せる
nnoremap <Leader>v :call Copymode()<CR>

function! Copymode()
  set nonumber
  set listchars=
endfunction
