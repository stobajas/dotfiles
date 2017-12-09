cd $HOME


sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#add custom folder after zsh install otherwise install fail
mkdir -p ~/.oh-my-zsh/custom/themes/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/dracula/zsh.git ~/.config/dracula-theme
git clone https://github.com/chriskempson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal
git clone https://github.com/junegunn/fzf.git ~/.config/fzf
git clone git@github.com:powerline/fonts.git ~/.config/fonts
git clone git@github.com:jeremyFreeAgent/oh-my-zsh-powerline-theme.git ~/.config/oh-my-zsh-powerline-theme

ln -sf ~/.config/dracula-theme/dracula.zsh-theme ~/.oh-my-zsh/custom/themes/dracula.zsh-theme
ln -sf ~/.config/oh-my-zsh-powerline-theme/powerline.zsh-theme ~/.oh-my-zsh/custom/themes/powerline.zsh-theme

~/.config/fonts/install.sh
~/.config/fzf/install

ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/vimrc $HOME/.ideavimrc




