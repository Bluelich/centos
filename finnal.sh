#!/bin/bash

#oh-my-zsh
mkdir ~/.oh-my-zsh/custom/themes;
cp    ~/centos/conf/lambda-mod.zsh-theme .oh-my-zsh/custom/themes;

#vim
#YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe;
# --system-libclang
./install.py --all;