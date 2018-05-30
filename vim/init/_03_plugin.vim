" Author: Takatsugu Yoneya

""""""""""""""""
" DEIN
"
if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/dein/dein.vim
call dein#begin(expand('~/.vim/dein'))
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimproc', {'build': 'make'})
  call dein#add('airblade/vim-gitgutter')
  call dein#add('groenewege/vim-less')
  call dein#add('itchyny/lightline.vim')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('jwalton512/vim-blade')
  call dein#add('kannokanno/previm')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('nikvdp/ejs-syntax')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('posva/vim-vue')
  call dein#add('rhysd/accelerated-jk')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
  call dein#add('thinca/vim-quickrun')
  call dein#add('thinca/vim-splash')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('tpope/vim-fugitive')
  call dein#add('twitvim/twitvim')
  call dein#add('tyru/open-browser.vim')
  call dein#add('ujihisa/unite-colorscheme')
  " version依存 #vim7.4.16以上
  if v:version > 740
    call dein#add('fatih/vim-go')
  endif
  " Darwin用プラグイン
  if system('uname') == "Darwin\n"
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  endif
call dein#end()

if dein#check_install()
  call dein#install()
endif
