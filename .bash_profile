# Load in all our bash settings
for file in ~/.{personal/.misc,personal/.git-config,personal/.path,prompt,aliases,functions,exports}
do
	[ -r "$file" ] && . "$file"
done
unset file
