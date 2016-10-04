
cd $HOME

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install zsh wget  python python3 nmap openssl openvpn p7zip pandoc ssh-copy-id git htop 
brew install vim --with-perl --with-ruby --with-python3 --with-features=huge

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/zenorocha/dracula-theme/
ln -s $HOME/dracula-theme/zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme

rm $HOME/.zshrm
rm $HOME/.vimrc
rm $HOME/.gitconfig

ln -s $HOME/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/vimrc $HOME/.ideavimrc


git clone git@github.com:powerline/fonts.git
sh $HOME/fonts/install.sh

sudo pip install powerline-status
brew cask install iterm2 mactex
