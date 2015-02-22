# Load in all our bash settings

for file in ~/.{prompt,aliases,exports,extras}
do
	[ -r "$file" ] && . "$file"
done
unset file

# Enable brew bash-completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
