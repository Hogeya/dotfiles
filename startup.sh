# 2017-10-07
# Please start up with zsh

# echo Maintan Now

echo Start make vim libraly

home=$HOME
# .vimディレクトリをカレントに作成
cd $home
mkdir .vim
cd .vim
mkdir colors

Github="https://github.com"
cd colors
git clone "$Github/tomasr/molokai"
git clone "$Github/w0ng/vim-hybrid"
mv molokai/colors/molokai.vim molokai.vim
mv vim-hybrid/colors/hybrid.vim hybrid.vim
rm -rf molokai
rm -rf vim-hybrid

echo DONE!!
echo Start make Symlinks at HOME

# シムリンクを作成する
cd $HOME
ln -sf $HOME/dotfiles/_vimrc .vimrc
ln -sf $HOME/dotfiles/_zshrc .zshrc
ln -sf $HOME/dotfiles/_tmux_conf .tmux.conf
ln -sf $HOME//dotfiles/_zprofile .zprofile

echo DONE!!
