# 2017-10-07
# Please start up with zsh

# echo Maintan Now

echo Start make vim libraly

home=$HOME
# .vimディレクトリをカレントに作成
cd $HOME
mkdir .vim
cd .vim
mkdir colors
mkdir dein

Github="https://github.com"
cd ~/.vim/colors
git clone "$Github/tomasr/molokai"
git clone "$Github/w0ng/vim-hybrid"
cd ~/.vim/dein
git clone "$Github/Shougo/dein.vim"
mv molokai/colors/molokai.vim molokai.vim
mv vim-hybrid/colors/hybrid.vim hybrid.vim
rm -rf molokai
rm -rf vim-hybrid

echo DONE!!

echo Start make zsh libraly

cd $HOME
mkdir .zsh
cd .zsh
git clone "$Github/hchbaw/auto-fu.zsh"
cd auto-fu.zsh
git checkout -b pu origin/pu
git clone https://github.com/kagamilove0707/moonline.zsh.git ~/.moonline
echo "test -f ~/.moonline/moonline.zsh && source ~/.moonline/moonline.zsh && moonline initialize" >> ~/dotfiles/_zshrc

echo DONE!!

echo Start make Symlinks at HOME

# シムリンクを作成する
cd $HOME
ln -sf $HOME/dotfiles/_vimrc .vimrc
ln -sf $HOME/dotfiles/_zshrc .zshrc
ln -sf $HOME/dotfiles/_tmux_conf .tmux.conf
ln -sf $HOME/dotfiles/_zprofile .zprofile
ln -sf $HOME/dotfiles/_gitconfig .gitconfig
cp ~/dotfiles/_gitconfig_privacy ~/.gitconfig.privacy
# TODO 入力した値をうまいこと.gitconfig.privacyに反映できるようにする
vim ~/.gitconfig.privacy

echo DONE!!
