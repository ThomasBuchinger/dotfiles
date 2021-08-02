.PHONY: default all

default: ~/.tmux.conf ~/.vimrc

all: default vscode

~/.vimrc: vim/vimrc
	cp --backup=numbered --update vim/vimrc ~/.vimrc
~/.tmux.conf: tmux/tmux.conf
	cp --backup=numbered --update tmux/tmux.conf ~/.tmux.conf

~/.config/Code/User/settings.json: vscode/settings.json
	cp --backup=numbered --update vscode/settings.json ~/.config/Code/User/settings.json 
