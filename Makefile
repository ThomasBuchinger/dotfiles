.PHONY: tmux vimrc

all: tmux vimrc

vimrc:
	cp vim/vimrc ~/.vimrc
tmux:
	cp tmux/tmux.conf ~/.tmux.conf
