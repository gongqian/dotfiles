#!/bin/bash

curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh

git clone git://github.com/samnang/dotfiles.git ~/.dotfiles

ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gvimrc ~/.gvimrc

ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gemrc ~/.gemrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/ctags ~/.ctags
ln -s ~/.dotfiles/ackrc ~/.ackrc
ln -s ~/.dotfiles/agignore ~/.agignore
ln -s ~/.dotfiles/aliases ~/.aliases
ln -s ~/.dotfiles/gitmessage ~/.gitmessage

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
