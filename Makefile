.PHONY: default all

default: ~/.tmux.conf ~/.vimrc

all: default vscode

# Vim
~/.vimrc: vim/vimrc vim/color-nord.vim
	mkdir -p ~/.vim/colors
	cp --backup=numbered --update vim/color-nord.vim ~/.vim/colors/nord.vim
	cp --backup=numbered --update vim/vimrc ~/.vimrc

# tmux
~/.tmux.conf: tmux/tmux.conf
	cp --backup=numbered --update tmux/tmux.conf ~/.tmux.conf

# VS Code
~/.config/Code/User/settings.json: vscode/settings.json
	cp --backup=numbered --update vscode/settings.json ~/.config/Code/User/settings.json 
