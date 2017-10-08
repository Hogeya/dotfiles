# 2017-10-07
# Please start up with zsh

echo vimのライブラリを作成開始します

# .vimディレクトリをカレントに作成
cd $HOME
mkdir .vim
cd .vim
mkdir bundle
mkdir colors

# vimで使用するライブラリの確保
cd bundle
git clone https://github.com/Shougo/neobundle.vim
git clone https://github.com/Shougo/neocomplcache
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/itchyny/lightline.vim
git clone https://github.com/miyakogi/seiya.vim
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/tpope/vim-fugitive
cd ../
cd colors # colors
git clone https://github.com/tomasr/molokai

echo vimのライブラリの作成を完了しました

# シムリンクを作成する
$HOME/dotfiles
ln -sf $HOME/.vimrc _vimrc
ln -sf $HOME/.zshrc _zshrc
ln -sf $HOME/.tmux.conf _tmux_conf
ln -sf $HOME/.zprofile _zprofile

