SHELL := /bin/bash

init: .vim .git-config .bashrc .tmux .inputrc

.vim:
	@echo "Config vim plugins";  \
	ln -fs `pwd`/vimrc  ~/.vimrc;\
	ln -fs `pwd`/vim    ~/.vim;  \
	git submodule init;          \
	git submodule update;

.git-config:
	@echo "Config git alias"
	@source git-alias.sh

.bashrc:
	@echo "Config bashrc"; 			\
	if [ -f ~/.bashrc ]; then            	\
	    target_file="$$HOME/.bashrc";       \
	else                                    \
	    target_file="$$HOME/.bash_profile"; \
	fi;					\
	echo -e "if [ -f ~/project/dotfile/bashrc ]; then\n    . ~/project/dotfile/bashrc\nfi" >> $$target_file

.tmux:
	@echo "Config tmux";\
	ln -fs `pwd`/tmux.conf ~/.tmux.conf;

.inputrc:
	@echo "Config inputrc";\
	cat `pwd`/inputrc >> ~/.inputrc
