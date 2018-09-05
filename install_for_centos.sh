# author: Takatsugu Yoneya
# 2018-7-11

echo Start make vim libraly
# .vimディレクトリをカレントに作成
cd $HOME
mkdir .vim
mkdir .zsh
cd .vim
mkdir colors
mkdir dein

# vim library
Github="https://github.com"
cd ~/.vim/colors
git clone "$Github/tomasr/molokai"
git clone "$Github/w0ng/vim-hybrid"
git clone "$Github/cocopon/iceberg.vim"
mv molokai/colors/molokai.vim molokai.vim
mv vim-hybrid/colors/hybrid.vim hybrid.vim
mv iceberg.vim iceberg
mv iceberg/colors/iceberg.vim ./
cd ~/.vim/dein
git clone "$Github/Shougo/dein.vim"
rm -rf molokai
rm -rf vim-hybrid
echo DONE!!

# zsh library
echo Start make zsh library
cd ~/.zsh/
git clone "$Github/zplug/zplug" ~/.zplug
npm install -global pure-prompt
echo DONE!!

echo Start make tmux library
cd $HOME
mkdir .tmux
cd .tmux
git clone "$Github/tmux-plugin/tmp ~/.tmux/plugins/tpm"
echo DONE!!

echo Start make Symlinks at HOME

# peco dir
echo Start make peco config
cd $HOME
mkdir .peco
cd $HOME
echo DONE!!

# シムリンクを作成する
cd $HOME
ln -sf $HOME/dotfiles/git/_gitconfig .gitconfig
ln -sf $HOME/dotfiles/_tmux_conf .tmux.conf
ln -sf $HOME/dotfiles/peco/config.json .peco/config.json
ln -sf $HOME/dotfiles/_vimrc .vimrc
ln -sf $HOME/dotfiles/_zshrc .zshrc
cp ~/dotfiles/_zshenv ~/.zshenv
cp ~/dotfiles/_netrc ~/.netrc
cp ~/dotfiles/git/_gitconfig_privacy ~/.gitconfig.privacy

echo DONE!!
