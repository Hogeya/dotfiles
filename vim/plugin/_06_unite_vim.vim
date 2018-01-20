" Author: Takatsugu Yoneya

""""""""""""""""""
" Unite.vim の設定
"
" 入力モードでスタートさせる
let g:unite_enable_start_insert=1

" ウィンドウを分割して開く
au Filetype unite nnoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')
au Filetype unite inoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')

" esc2回押しで終了
au filetype unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au filetype unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" バッファ一覧
noremap ,ub :Unite buffer<CR>
" ファイル一覧
noremap ,uf :Unite -buffer-name=file file<CR>
" 最近使ったファイル一覧
noremap ,ur :Unite file_mru<CR>
" sourceを今見ているディレクトリ以下にする
noremap ,ucd :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
