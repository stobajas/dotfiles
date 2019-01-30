cd $HOME

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/junegunn/fzf.git ~/.config/fzf
git clone git@github.com:powerline/fonts.git ~/.config/fonts

~/.config/fzf/install
~/.config/fonts/install.sh
