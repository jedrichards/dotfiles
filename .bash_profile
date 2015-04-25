# Load in all our bash settings

for file in ~/.{prompt,aliases,exports,extras}
do
	[ -r "$file" ] && . "$file"
done
unset file
