#!/usr/bin/env bash

echo "Installing brew formulae..."

########
# BREW #
########
brew update
brew upgrade
brew install cask
BREW_PREFIX=$(brew --prefix)

##################
# TERMINAL UTILS #
##################
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
brew install findutils
brew install gnu-sed
brew install gnupg
brew install wget --with-iri
brew install curl
brew install vim
brew install grep
brew install openssh
brew install autoenv
brew install fzf
brew install jq
brew install watch
brew install vim --with-override-system-vi
brew install tmux
brew install git-lfs
brew install ssh-copy-id
brew tap homebrew/cask-fonts
brew cask install font-fira-code

#############
# DEV TOOLS #
#############
brew install git
brew install git-secret
brew cask install google-chrome
brew cask install slack
brew cask install spotify
brew cask install evernote
brew cask install alfred

###########
# PYTHON3 #
###########
# brew install pyenv
# brew install python3
# sudo python -m ensurepip --default-pip
# sudo pip install --upgrade pip

#############
# GPG UTILS #
#############
brew install paperkey
brew install libqrencode

######## 
# NODE #
########
# brew install node
# brew install nvm

#############
# DATABASES #
#############
# brew install postgresql@10

##########
# DEVOPS #
##########
# brew install ansible
# brew install awscli
# brew install aws-iam-authenticator
# brew install kops
# brew install kubectx
# brew install kubernetes-cli
# brew cask install minikube
# brew install tfenv

##########
# DOCKER #
##########
# brew install docker
# brew install docker-compose
# brew install docker-machine

# Remove outdated versions from the cellar.
brew cleanup
