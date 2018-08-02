" Author: Takatsugu Yoneya

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" 区切り文字まで補完する
let g:neocomplete#enable_auto_delimiter = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" enterで補完候補の確定/スニペットにも展開
imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
" 補完候補をタブで選択 スニペット内のジャンプもタブでジャンプ
imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions',
    \ 'php' : $HOME.'/dotfiles/src/php/php.dict,' . $HOME.'/dotfiles/src/php/laravel-4.2.dict'
    \ }

let g:neocomplete#delimiter_patterns = {
    \ 'php': ['->', '::', '\']
    \}
