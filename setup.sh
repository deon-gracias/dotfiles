#!/bin/sh

cp -r fish ~/.config/fish
cp -r nvim ~/.config/nvim
cp -r aliases ~/.config/aliases
cp -r bspwm ~/.config/bspwm
cp -r sxhkd ~/.config/sxhkd
cp -r mpd ~/.config/mpd
cp -r ncmpcpp ~/.config/ncmpcpp
cp -r qutebrowser ~/.config/qutebrowser

# Install oh my fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Install vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
