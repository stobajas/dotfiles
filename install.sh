sudo apt-get update

#sudo apt-get install -y zsh python3 python3-pip git htop tmux pass checkinstall python-dev python3-dev build-essential cmake gpgv2  


cd $HOME

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/dracula/zsh.git ~/.config/dracula-theme
ln -s ~/.config/dracula-theme/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme

rm -rf $HOME/.zshrc
rm -rf $HOME/.vimrc
rm -rf $HOME/.gitconfig

ln -s $HOME/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/vimrc $HOME/.ideavimrc

git clone git@github.com:powerline/fonts.git ~/config
sh ~/.config/fonts/install.sh

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/chriskempson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal

