" Author: Takatsugu Yoneya

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
