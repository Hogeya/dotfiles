" Author: Takatsugu Yoneya

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
