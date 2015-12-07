#!/usr/bin/env bash

# Copy dotfiles to your home directory. Files are copied interactively and
# one-by-one, and renamed to prefix the filename with a dot. Existing files with
# the same name in ~ will be clobbered so be careful. You should restart your
# terminal afterwards.

cp -fi aliases ~/.aliases
cp -fi bash_profile ~/.bash_profile
cp -fi bashrc ~/.bashrc
cp -fi exports ~/.exports
cp -fi gitconfig ~/.gitconfig
cp -fi gitignore ~/.gitignore
cp -fi nanorc ~/.nanorc
cp -fi prompt ~/.prompt
[ -r secrets ] && cp -fi secrets ~/.secrets
printf "\n\033[0;32m✓ Publish complete\033[0m\n"
