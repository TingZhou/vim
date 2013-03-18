if [ -d ~/.vim ]
then
  echo "\033[0;33mYou already have vim plugin installed.\033[0m You'll need to remove ~/.vim if you want to install"
  exit
fi

# clone vim
echo "Cloning vim"
/usr/bin/env git clone https://github.com/TingZhou/vim.git $HOME/.vim
ln -s $HOME/.vim/vimrc $HOME/.vimrc

# install vundle and plugins
echo "Installing vundle"
git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

echo "Installing plugins"
vim +BundleInstall! +BundleClean +qall
