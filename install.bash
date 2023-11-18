#!/bin/bash 

help() {
	echo "Installation script for vim config"
	echo "SYNOPSIS:"
	echo "	bash install.bash [options]"
	echo "	-m, --minimal:"
	echo " 		install minimal configuration"
}

minimal_install() {
	if [[ `pwd` == "${HOME}/.vim" ]]; then
		return 1
	fi
	mkdir -p ${HOME}/.vim
	cp -r minimal/* -t ${HOME}/.vim/
}

##################
## START
##################

if [[ $# == 0 ]]; then
	help
	exit 0
fi

while [[ $# -gt 0 ]]; do
	case $1 in
		-m|--minimal)
			minimal_install
			exit 0
			;;
	esac
done
