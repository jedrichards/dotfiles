#!/usr/bin/env bash

# Copy contents of this script's containing folder to ~. Existing files with the same name
# in ~ will be clobbered so be careful. Use the -f option to skip the confirmation prompt.
# You should explicity restart your terminal and/or source ~/.bash_profile afterwards.

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
	echo "Copying dotfiles to your home directory ..."
	rsync --exclude-from "rsync-excludes.txt" -av . ~
	echo "Dotfiles published."
}

if [ "$1" == "--force" -o "$1" == "-f" ];
then
	doIt
else
	echo "This will overwrite files in ~."
	read -p "Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]];
	then
		doIt
	fi
fi
unset doIt
