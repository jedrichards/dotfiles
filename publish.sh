#!/bin/bash

# Copy contents of this script's containing folder to ~. Existing files with the same name
# in ~ will be clobbered so be careful. Use the -f option to skip the confirmation prompt.
# You should explicity restart your terminal and/or source ~/.bash_profile afterwards.

# Discover this script's directory and change into it:

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

# This script will optionally rsync dotfiles to remote workstations over ssh if it finds an
# array of hosts in the ./personal/.servers file. The ./personal folder is kept out of GitHub
# for obvious reasons.

[ -r ./.personal/.servers ] && . ./.personal/.servers

# Begin rsyncing dotfiles.

function doIt() {
	echo "Copying dotfiles to your home directory ..."
	rsync --exclude-from "rsync-excludes.txt" -av . ~
	if [ -n "$DOTFILESERVERS" ]
	then
		local len=${#DOTFILESERVERS[*]}
		echo "Found ${len} remote dotfile location(s)."
		i=0
		while [ $i -lt $len ];
		do
			echo "Copying dotfiles to ${DOTFILESERVERS[$i]} ..."
			rsync --rsh=ssh --exclude-from "rsync-excludes.txt" -av . ${DOTFILESERVERS[$i]}
			let i++
		done
	else
		echo "No remote dotfile locations found."
	fi
	echo "Dotfiles published."
	echo "Now restart your shell and/or invoke '. ~/.bash_profile'."
}

if [ "$1" == "--force" -o "$1" == "-f" ];
then
	doIt
else
	echo "This will overwrite files in ~ and any remote locations with the contents of ${DIR}."
	read -p "Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]];
	then
		doIt
	fi
fi
unset doIt
