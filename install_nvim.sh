#!/bin/bash - 
#===============================================================================
#
#          FILE: install_nvim.sh
# 
#         USAGE: ./install_nvim.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 16/10/2016 14:54:54
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

brew install neovim/neovim/neovim
pip3 install --upgrade neovim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

