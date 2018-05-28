" Author: Takatsugu Yoneya

""""""""""""""""""
" Unite.vim の設定
"
" 入力モードでスタートさせる
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enanle=1
let g:unite_source_file_mru_limit=200

" 大文字小文字を区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" grep検索
nnoremap <silent> <Leader>ug  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent> <Leader>ucg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" grep検索結果の再呼出
nnoremap <silent> <Leader>ur  :<C-u>UniteResume search-buffer<CR>

" ウィンドウを分割して開く
au Filetype unite nnoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')
au Filetype unite inoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')

" esc2回押しで終了
au filetype unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au filetype unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" バッファ一覧
noremap <Leader>ub :Unite buffer<CR>
" ファイル一覧
noremap <Leader>uf :Unite -buffer-name=file file<CR>
" 最近使ったファイル一覧
noremap <Leader>ur :Unite file_mru<CR>
" sourceを今見ているディレクトリ以下にする
noremap <Leader>ucd :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" Bookmarkに追加
noremap <Leader>ba :UniteBookmarkAdd<CR>
" Bookmark一覧を表示
noremap <Leader>bl :Unite bookmark<CR>

" unite grepにagを使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
