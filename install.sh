sudo apt-get update
sudo apt-get install -y python3 python3-pip vim git htop tmux openjdk-7-jdk pass  

cd $HOME

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/zenorocha/dracula-theme/
ln -s $HOME/dracula-theme/zsh/dracula.zsh-theme $HOME/.oh-my-zsh/themes/dracula.zsh-theme

rm $HOME/.zshrc
rm $HOME/.vimrc
rm $HOME/.gitconfig

ln -s $HOME/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/vimrc $HOME/.ideavimrc

git clone git@github.com:powerline/fonts.git
sh $HOME/fonts/install.sh

pip3 install powerline-status
