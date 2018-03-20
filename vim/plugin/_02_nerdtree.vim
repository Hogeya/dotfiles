" Author: Takatsugu Yoneya

"""""""""""""""""""
" NERDTREEの設定
"
" Leader + t でTreeを開けるようにする
nnoremap <silent><Leader>nt :NERDTreeTabsToggle<CR>

" vim起動時にconsoleをスタートアップ
" let g:nerdtree_tabs_open_on_console_startup = 1

" 隠しファイルを表示
let NERDTreeShowHidden = 1

" NerdTreeの幅設定
let NERDTreeWinSize = 40

" DefaultでBookmarkを表示
let g:NERDTreeShowBookmarks = 1

" アイコンを指定
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
