#!/bin/bash
dl() {
	if [ `which curl` ]; then
		curl "$1" > "$2"
	elif [ `which wget` ]; then
		wget "$1" -O "$2"
	fi
}

cd $(dirname "${BASH_SOURCE[0]}")

echo "Copying dotfiles"
cp -v vimrc ~/.vimrc
cp -v zshrc ~/.zshrc
cp -v bashrc ~/.bashrc
cp -v bash_profile ~/.bash_profile

mkdir -p /.vim/autoload
echo "Grabbing vim-plug"
dl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ~/.vim/autoload/plug.vim

echo "Grabbing oh-my-zsh"
git clone https://github.com/telyn/oh-my-zsh.git ~/.oh-my-zsh

echo "Grabbing bash-it"
git clone https://github.com/telyn/bash-it.git ~/.bash-it

echo "Installing vim plugins"
vim -c "PlugInstall | qall"

echo "All done!"
