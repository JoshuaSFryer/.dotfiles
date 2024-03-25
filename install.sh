#!/bin/bash

# Neovim Unstable
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt update
sudo apt install tmux git neovim

stow bash git nvim tmux

git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
