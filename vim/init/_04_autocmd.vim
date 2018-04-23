" Author: Takatsugu Yoneya

""""""""""""""""""
" autocmd の設定一覧
"
augroup vimrc_loading
  autocmd!
  autocmd Bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd BufNewFile,BufRead *.coffee call CmdDefault() | set filetype=coffee
  autocmd BufNewFile,BufRead *.ejs call CmdDefault() | set filetype=ejs
  autocmd BufNewFile,BufRead *.go call CmdDefault() | set filetype=go
  autocmd BufNewFile,BufRead *.html call CmdDefault | set filetype=html
  autocmd BufNewFile,BufRead *.less call CmdDefault() | set filetype=less
  autocmd BufNewFile,BufRead *.md call CmdDefault() | set filetype=markdown
  autocmd BufNewFile,BufRead *.php call Cmdphp()
  autocmd BufNewFile,BufRead *.py call CmdDefault() | set filetype=python
  autocmd BufNewFile,BufRead *.sh call CmdDefault() | set filetype=sh
  autocmd BufNewFile,BufRead *.vim call CmdDefault() | set filetype=vim
  autocmd BufNewFile,BufRead *.vue call CmdDefault() | set filetype=vue
  autocmd BufNewFile,BufRead *.zsh call CmdDefault() | set filetype=zsh

  " crontab
  autocmd BufNewFile,BufRead crontab call CmdDefault() | set filetype=crontab

  " make file
  autocmd BufNewFile,BufRead Makefile call CmdDefault() | set filetype=make

  " dotfiles
  autocmd BufNewFile,BufRead .env call CmdDefault() | set filetype=sh
  autocmd BufNewFile,BufRead .env.* call CmdDefault() | set filetype=sh
  autocmd BufNewFile,BufRead .gitconfig call CmdDefault() | set filetype=gitconfig
  autocmd BufNewFile,BufRead .tmux.conf call CmdDefault() | set filetype=tmux
  autocmd BufNewFile,BufRead .vimrc call CmdDefault() | set filetype=vim
  autocmd BufNewFile,BufRead .zshrc call CmdDefault() | set filetype=zsh

  " blade file
  autocmd BufNewFile,BufRead *.blade.php call CmdDefault() | set filetype=blade

" For my Dotfiles repository
  autocmd BufNewFile,BufRead _gitconfig call CmdDefault() | set filetype=gitconfig
  autocmd BufNewFile,BufRead _gitconfig_privacy call CmdDefault() | set filetype=gitconfig
  autocmd BufNewFile,BufRead _tmux_conf call CmdDefault() | set filetype=tmux
  autocmd BufNewFile,BufRead _vimrc call CmdDefault() | set filetype=vim
  autocmd BufNewFile,BufRead _zprofile call CmdDefault() | set filetype=zsh
  autocmd BufNewFile,BufRead _zshrc call CmdDefault() | set filetype=zsh

  " add templete
  autocmd BufNewFile *.php 0r $HOME/dotfiles/src/php_signature.txt
  autocmd BufNewFile *.py 0r $HOME/dotfiles/src/python_signature.txt
augroup END

function! CmdDefault()
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
