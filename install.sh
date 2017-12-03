cd $HOME

mkdir -p ~/.oh-my-zsh/custom/themes/

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone https://github.com/dracula/zsh.git ~/.config/dracula-theme
ln -sf ~/.config/dracula-theme/dracula.zsh-theme ~/.oh-my-zsh/custom/themes/dracula.zsh-theme

git clone git@github.com:jeremyFreeAgent/oh-my-zsh-powerline-theme.git ~/.config/oh-my-zsh-powerline-theme
ln -sf ~/.config/oh-my-zsh-powerline-theme/Powerline.zsh-theme ~/.oh-my-zsh/custom/themes/powerline.zsh-theme

git clone https://github.com/chriskempson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal

git clone git@github.com:powerline/fonts.git ~/.config/fonts
~/.config/fonts/install.sh

ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/vimrc $HOME/.ideavimrc


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.config/fzf
~/.config/fzf/install


