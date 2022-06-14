#!/bin/sh

# Install oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Install vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
