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
brew install wget
brew install curl
brew install vim
brew install grep
brew install openssh
brew install autoenv
brew install fzf
brew install jq
brew install watch
brew install vim
brew install tmux
brew install git-lfs
brew install ssh-copy-id
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install telnet
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#############
# DEV TOOLS #
#############
brew install git
brew install git-secret
brew install git-crypt
brew install --cask openvpn-connect
brew install --cask visual-studio-code
brew install --cask pgadmin4
brew install --cask postman

########
# DATA #
########
brew tap dbt-labs/dbt
brew install dbt-postgres

###################
# USABILITY TOOLS #
###################
brew install --cask google-chrome
brew install --cask brave-browser
brew install --cask caffeine
brew install --cask slack
brew install --cask spotify
brew install --cask notion
brew install --cask alfred
brew install --cask spectacle

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
brew install gpg
brew install paperkey
brew install libqrencode

######## 
# NODE #
########
brew install node
brew install nvm

##########
# DEVOPS #
##########
brew install ansible
brew install awscli
# brew install aws-iam-authenticator
brew install kops
brew install kubectx
# brew cask install minikube
# brew install tfenv
# brew install serverless

##########
# DOCKER #
##########
brew install docker
brew install docker-compose
brew install docker-machine

# Remove outdated versions from the cellar.
brew cleanup
