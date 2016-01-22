sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/zenorocha/dracula-theme/
ln -s $HOME/dracula-theme/zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme

ln -s $HOME/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc

git clone git@github.com:powerline/fonts.git
sh $HOME/fonts/install.sh

sudo pip install powerline-status
brew cask install iterm2 mactex
