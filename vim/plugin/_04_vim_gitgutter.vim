" Author: Takatsugu Yoneya

""""""""""""""""""""
" vim-gitgutterの設定
"
" vim起動時にgit差分をハイライトで表示する
" let g:gitgutter_highlight_lines = 1

set updatetime=250

" to next hunk
nmap ]h <Plug>GitGutterNextHunk

" to Prev hunk
nmap [h <Plug>GitGutterPrevHunk

" staging
nmap <Leader>ha <Plug>GitGutterStageHunk

" revert
nmap <Leader>hr <Plug>GitGutterUndoHunk

" preview
nmap <Leader>hv <Plug>GitGutterPreviewHunk
