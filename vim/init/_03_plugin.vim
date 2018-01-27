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
  call dein#add('Shougo/neocomplcache.vim')
  call dein#add('Shougo/unite.vim')
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
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('thinca/vim-splash')
  call dein#add('tpope/vim-fugitive')
  call dein#add('twitvim/twitvim')
  call dein#add('tyru/open-browser.vim')
call dein#end()

if dein#check_install()
  call dein#install()
endif
