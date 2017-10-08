# 2017-10-07
# Please start up with zsh

echo Start make vim libraly

home=$HOME
# .vimディレクトリをカレントに作成
cd $home
mkdir .vim
cd .vim
mkdir bundle
mkdir colors

Github="https://github.com"
# vimで使用するライブラリの確保
cd bundle
git clone "$Github/Shougo/neobundle.vim"
git clone "$Github/Shougo/neocomplcache"
git clone "$Github/airblade/vim-gitgutter"
git clone "$Github/itchyny/lightline.vim"
git clone "$Github/miyakogi/seiya.vim"
git clone "$Github/scrooloose/nerdtree"
git clone "$Github/tpope/vim-fugitive"
cd ../
cd colors
git clone "$Github/tomasr/molokai"

echo DONE!!
echo Start make Symlinks at HOME

# シムリンクを作成する
cd $HOME/dotfiles
ln -sf $HOME/.vimrc _vimrc
ln -sf $HOME/.zshrc _zshrc
ln -sf $HOME/.tmux.conf _tmux_conf
ln -sf $HOME/.zprofile _zprofile

echo DONE!!
