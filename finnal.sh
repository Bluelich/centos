#!/bin/bash

#oh-my-zsh
mkdir ~/.oh-my-zsh/custom/themes;
cp    ~/centos/conf/lambda-mod.zsh-theme .oh-my-zsh/custom/themes;

#vim
#YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe;
# --system-libclang
#处理clang校验问题
gpg --recv-keys 02119294;
./install.py --all;