" Author: Takatsugu Yoneya

""""""""""""""""""
" autocmd の設定一覧
"
augroup vimrc_loading
  autocmd!
  autocmd Bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd BufNewFile,BufRead *.coffee call Cmdcoffee()
  autocmd BufNewFile,BufRead *.ejs call Cmdejs()
  autocmd BufNewFile,BufRead *.html call Cmdhtml()
  autocmd BufNewFile,BufRead *.less call Cmdless()
  autocmd BufNewFile,BufRead *.md call Cmdmd()
  autocmd BufNewFile,BufRead *.php call Cmdphp()
  autocmd BufNewFile,BufRead *.py call Cmdpython()
  autocmd BufNewFile,BufRead *.vim call Cmdvim()
  autocmd BufNewFile,BufRead *.vue call Cmdvue()
  autocmd BufNewFile,BufRead *.zsh call Cmdzsh()

  " dotfiles
  autocmd BufNewFile,BufRead .env call Cmdenv()
  autocmd BufNewFile,BufRead .env.* call Cmdenv()
  autocmd BufNewFile,BufRead .gitconfig call Cmdgitconfig()
  autocmd BufNewFile,BufRead .vimrc call Cmdvim()
  autocmd BufNewFile,BufRead .zshrc call Cmdzsh()

  " blade file
  autocmd BufNewFile,BufRead *.blade.php call Cmdbladephp()

  " add templete
  autocmd BufNewFile *.php 0r $HOME/dotfiles/src/php_signature.txt
  autocmd BufNewFile *.py 0r $HOME/dotfiles/src/python_signature.txt
augroup END

function! Cmdbladephp()
  set filetype=blade
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdcoffee()
  set filetype=coffee
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdejs()
  set filetype=ejs
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdenv()
  set filetype=sh
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdgitconfig()
  set filetype=gitconfig
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdless()
  set filetype=less
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdhtml()
  set filetype=html
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdmd()
  set filetype=markdown
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdphp()
  set filetype=php
  set noexpandtab
  set shiftwidth=4
  set softtabstop=4
endfunction

function! Cmdpython()
  set filetype=python
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdvim()
  set filetype=vim
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdvue()
  set filetype=vue
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction

function! Cmdzsh()
  set filetype=zsh
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endfunction
