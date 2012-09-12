#!/bin/bash

# Copy contents of this script's containing folder to ~.
# Folder contents will also be copied to remote locations defined in a $DFREMOTES array.
# Existing files with the same name in destination folders will be clobbered so be careful.
# Use the -f option to skip the confirmation prompt.
# You may need to explicity refresh bash to see changes.

# Discover this script's directory
DIR="$( cd "$( dirname "$0" )" && pwd )"
cd $DIR

# Source the .personal file to bring in the DFREMOTES array
. ./.personal

# Begin syncing files to various locations
function doIt() {
	echo "Copying dotfiles to ~ ..."
	rsync --exclude-from "rsync-excludes.txt" -av . ~
	if [ -n "$DFREMOTES" ]
	then
		local len=${#DFREMOTES[*]}
		echo "Found ${len} remote location(s)."
		i=0
		while [ $i -lt $len ];
		do
			echo "Copying dotfiles to ${DFREMOTES[$i]} ..."
			rsync --rsh=ssh --progress --exclude-from "rsync-excludes.txt" -av . ${DFREMOTES[$i]}
			let i++
		done
	else
		echo "No remote locations found."
	fi
	echo "Publish complete."
	echo "Refresh your shell and/or run 'source ~/.bash_profile' to see changes."
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

# Our git config values from .personal have been overwritten with our GitHub-safe anonymous .gitconfig file so
# source .personal again to re-rewrite them in. This is scrappy, should think of a better way ...
. ./.personal