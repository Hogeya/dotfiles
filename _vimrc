if 1
   set nocompatible
   if has('vim_starting')
  	   set runtimepath+=~/.vim/bundle/neobundle.vim
   endif
   call neobundle#begin(expand('~/.vim/bundle/'))
   NeoBundleFetch 'Shougo/neobundle.vim'
   NeoBundle 'Shougo/neocomplete'
   NeoBundle 'Shougo/neosnippet-snippets'
   NeoBundle 'scrooloose/syntastic'
   NeoBundle 'Shougo/neosnippet'
   NeoBundle 'tomasr/molokai'

   call neobundle#end()

   filetype plugin indent on
   NeoBundleCheck
   syntax on
   set number
   set ruler
   set encoding=utf-8
   set autoindent
   set wrapscan
   set showmatch
   set showmode
   set title
   set tabstop=4

   colorscheme molokai
   set t_Co=256
endif
