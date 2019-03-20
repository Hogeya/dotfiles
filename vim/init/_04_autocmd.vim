" Author: Takatsugu Yoneya

""""""""""""""""""
" autocmd の設定一覧
"
augroup vimrc_loading
  autocmd!
  autocmd Bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  autocmd BufNewFile,BufRead *.c call CmdDefault() | set filetype=c
  autocmd BufNewFile,BufRead *.coffee call CmdDefault() | set filetype=coffee
  autocmd BufNewFile,BufRead *.ejs call CmdDefault() | set filetype=ejs
  autocmd BufNewFile,BufRead *.go call CmdDefault() | set filetype=go
  autocmd BufNewFile,BufRead *.h call CmdDefault() | set filetype=objc
  autocmd BufNewFile,BufRead *.html call CmdDefault() | set filetype=html
  autocmd BufNewFile,BufRead *.java call CmdDefault() | set filetype=java
  autocmd BufNewFile,BufRead *.js call CmdDefault() | set filetype=javascript
  autocmd BufNewFile,BufRead *.json call CmdDefault() | set filetype=json
  autocmd BufNewFile,BufRead *.less call CmdDefault() | set filetype=less
  autocmd BufNewFile,BufRead *.lua call CmdDefault() | set filetype=lua
  autocmd BufNewFile,BufRead *.m call CmdDefault() | set filetype=objc
  autocmd BufNewFile,BufRead *.php call Cmdphp()
  autocmd BufNewFile,BufRead *.py call CmdDefault() | set filetype=python
  autocmd BufNewFile,BufRead *.sql call CmdDefault() | set filetype=sql
  autocmd BufNewFile,BufRead *.sh call CmdDefault() | set filetype=sh
  autocmd BufNewFile,BufRead *.ts call CmdDefault() | set filetype=typescript
  autocmd BufNewFile,BufRead *.vim call CmdDefault() | set filetype=vim
  autocmd BufNewFile,BufRead *.vue call CmdDefault() | set filetype=vue
  autocmd BufNewFile,BufRead *.zsh call CmdDefault() | set filetype=zsh
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} call CmdDefault() | set filetype=markdown
  autocmd BufNewFile,BufRead *.{pu,uml} call CmdDefault() | set filetype=plantuml

  " dotfiles
  autocmd BufNewFile,BufRead .{env,env.*} call CmdDefault() | set filetype=sh
  autocmd BufNewFile,BufRead .gitconfig call CmdDefault() | set filetype=gitconfig
  autocmd BufNewFile,BufRead .tmux.conf call CmdDefault() | set filetype=tmux
  autocmd BufNewFile,BufRead .vimrc call CmdDefault() | set filetype=vim
  autocmd BufNewFile,BufRead {.zsh*,_z*} call CmdDefault() | set filetype=zsh

  " For my Dotfiles repository
  autocmd BufNewFile,BufRead _gitconfig* call CmdDefault() | set filetype=gitconfig
  autocmd BufNewFile,BufRead *_tmux_conf call CmdDefault() | set filetype=tmux
  autocmd BufNewFile,BufRead _vimrc call CmdDefault() | set filetype=vim

  " others
  autocmd BufNewFile,BufRead crontab call CmdDefault() | set filetype=crontab
  autocmd BufNewFile,BufRead Makefile call CmdDefault() | set filetype=make

  " add templete
  autocmd BufNewFile *.php 0r $HOME/dotfiles/src/php/php_signature.txt
  autocmd BufNewFile *.py 0r $HOME/dotfiles/src/python/python_signature.txt
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
