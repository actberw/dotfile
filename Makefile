SHELL := /bin/bash

init: .vim .git .bashrc .tmux

.vim:
	@echo "Config vim plugins";  \
	ln -fs `pwd`/vimrc  ~/.vimrc;\
	ln -fs `pwd`/vim    ~/.vim;  \
	git submodule init;          \
	git submodule update;

.git:
	@echo "Config git alias"
	@source git-alias.sh

.bashrc:
	@echo "Config bashrc"; 			\
	if [ -f ~/.bashrc ]; then            	\
	    target_file="$$HOME/.bashrc";       \
	else                                    \
	    target_file="$$HOME/.bash_profile"; \
	fi;					\
	echo -e "if [ -f ~/project/code/shell/bashrc ]; then\n    source ~/project/code/shell/bashrc\nfi" >> $$target_file

.tmux:
	@echo "Config tmux";\
	ln -fs `pwd`/tmux.conf ~/.tmux.conf;
