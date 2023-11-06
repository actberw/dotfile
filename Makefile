SHELL := /bin/bash

.PHONY: all vim git bash tmux inputrc

all: git bash tmux inputrc

vim:
	@echo "Config vim plugins";  \
	ln -fs `pwd`/vimrc  ~/.vimrc;\
	ln -fsn `pwd`/vim    ~/.vim;  \
	git submodule init;          \
	git submodule update;

git:
	@echo "Config git alias"
	. ./git-alias.sh

bash:
	@echo "Config bashrc"; 			\
	if [ -f ~/.bashrc ]; then            	\
	    target_file="$$HOME/.bashrc";       \
	else                                    \
	    target_file="$$HOME/.bash_profile"; \
	fi;					\
	echo -e "[[ -f ~/project/dotfile/bashrc ]] && . ~/project/dotfile/bashrc" >> $$target_file

tmux:
	@echo "Config tmux";\
	ln -fs `pwd`/tmux.conf ~/.tmux.conf;

inputrc:
	@echo "Config inputrc";\
	cat `pwd`/inputrc >> ~/.inputrc
