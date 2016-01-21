sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

 $HOME/dotfiles/vimrc ../.vimrc
 $HOME/dotfiles/zshrc ../.zshrc

sudo pip install powerline-status
git clone git@github.com:powerline/fonts.git
./font/install.sh

