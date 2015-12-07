# Source the dotfiles
for file in ~/.{prompt,aliases,exports,secrets}
do
	[ -r "$file" ] && . "$file"
done
