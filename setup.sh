#!/bin/bash

xcode-select --install

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# daily use
brew cask install \
  menumeters \
  the-unarchiver \
  itsycal \
  eudic \
  appcleaner \
  clashx \
  iina \
  scroll-reverser \
  typora

# development - formula
brew install \
  aria2 \
  go \
  node \
  ffmpeg \
  fzf \
  ripgrep

# development - cask
brew cask install \
  macvim \
  visual-studio-code \
  mysqlworkbench \
  firefox \
  docker \
  github

# rust
brew install rustup-init && rustup-init
rustup component add rls rust-src
brew install rust-analyzer 

# zsh config
mv $HOME/.zshrc $HOME/.zshrc_bak
ln -s $(pwd)/zsh/zshenv $HOME/.zshenv
ln -s $(pwd)/zsh/zshrc $HOME/.zshrc

# vim
pushd
git clone git@github.com:elsonwu/vim.git $HOME/.vim && cd $HOME/.vim && ./setup.sh
popd
