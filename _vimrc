" Author: Takatsugu Yoneya

set runtimepath+=~/dotfiles/vim

runtime! init/_01_basic.vim
runtime! init/_02_keybind.vim
runtime! init/_03_plugin.vim
runtime! init/_04_autocmd.vim

runtime! plugin/_01_lightline.vim
runtime! plugin/_02_nerdtree.vim
runtime! plugin/_04_vim_gitgutter.vim
runtime! plugin/_05_twitvim.vim
runtime! plugin/_06_unite_vim.vim
runtime! plugin/_08_vim_markdown.vim
runtime! plugin/_09_vim_splash.vim
runtime! plugin/_10_syntastic.vim
runtime! plugin/_11_vim_nerdtree_syntax_highlight.vim
runtime! plugin/_12_vim_devicon.vim
runtime! plugin/_13_quickrun.vim
runtime! plugin/_14_neocomplete.vim
runtime! plugin/_15_previm.vim
runtime! plugin/_16_emmet_vim.vim

" 画面を分割して定義元へのジャンプ
function! DefinitionJumpWithPhpactor()
    split
    call phpactor#GotoDefinition()
endfunction


" useの補完
nmap <silent><Leader>a      :<C-u>call phpactor#UseAdd()<CR>
" コンテキストメニューの起動(カーソル下のクラスやメンバに対して実行可能な選択肢を表示してくれます)
nmap <silent><Leader>mm     :<C-u>call phpactor#ContextMenu()<CR>
" ナビゲーションメニューの起動(クラスの参照元を列挙したり、他ファイルへのジャンプなど)
nmap <silent><Leader>nn     :<C-u>call phpactor#Navigate()<CR>
" 編集中のクラスに対し各種の変更を加える(コンストラクタ補完、インタフェース実装など)
nmap <silent><Leader>c     :<C-u>call phpactor#Transform()<CR>
" split → jump
nmap <silent><Leader>j :<C-u>call DefinitionJumpWithPhpactor()<CR>
" カーソル下のクラスや変数の情報を表示する
" 他のエディタで、マウスカーソルをおいたときに表示されるポップアップなどに相当
vmap <silent><Leader>hh     :<C-u>call phpactor#Hover()<CR>

autocmd FileType php setlocal omnifunc=phpactor#Complete
