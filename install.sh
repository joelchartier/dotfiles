#!/usr/bin/env bash

function installUpdateVundle() {
	if [ -d "$HOME/.vim/bundle/Vundle.vim" ]; then
		cd ~/.vim/bundle/Vundle.vim
		git pull
	else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	fi
}

function installUpdateTpm() {
	if [ -d "$HOME/.tmux/plugins/tpm" ]; then
		cd ~/.tmux/plugins/tpm
		git pull
	else
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	fi
}

function installFiles() {
	rsync --exclude ".git/" \
		--exclude ".gitignore" \
		--exclude ".DS_Store" \
		--exclude "install.sh" \
		--exclude "brew.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms . ~;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	installFiles;
	installUpdateVundle;
	installUpdateTpm;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		installFiles;
		installUpdateVundle;
		installUpdateTpm
	fi;
fi;
unset installFiles;
unset installUpdateVundle;
unset installUpdateTpm;
