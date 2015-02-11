init:
	ln -fs `pwd`/vimrc  ~/.vimrc
	ln -fs `pwd`/vim    ~/.vim
	git submodule init
	git submodule update
