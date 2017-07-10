#!bin/bash

ln -s dotfiles/.vimrc ~/.vimrc
ln -s dotfiles/.ctags ~/.ctags
ln -s dotfiles/.agignore ~/.agignore
ln -s dotfiles/.vim/plugin.toml ~/.vim/plugin.toml
ln -s dotfiles/.neocompleteconf.vim ~/.neocompleteconf.vim
ln -snfv ${HOME}/.vim ${HOME}/.config/nvim/
ln -snfv ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim
cp dotfiles/.vim/lightline.conf.vim ~/.vim/lightline.conf.vim
cp dotfiles/fonts/Ricty-Bold-Powerline.ttf ~/Library/Fonts/
cp dotfiles/fonts/Ricty-Bold.ttf ~/Library/Fonts/
cp dotfiles/fonts/Ricty-Regular-Powerline.ttf ~/Library/Fonts/
cp dotfiles/fonts/Ricty-Regular.ttf ~/Library/Fonts/
cp dotfiles/fonts/RictyDiscord-Bold-Powerline.ttf ~/Library/Fonts/
cp dotfiles/fonts/RictyDiscord-Bold.ttf ~/Library/Fonts/
cp dotfiles/fonts/RictyDiscord-Regular-Powerline.ttf ~/Library/Fonts/
cp dotfiles/fonts/RictyDiscord-Regular.ttf ~/Library/Fonts/
fc-cache -vf
