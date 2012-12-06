# Load in all our bash settings
for file in ~/.{personal/.misc,personal/.git-config,personal/.path,prompt,aliases,functions,exports}
do
	echo "$file"
	[ -r "$file" ] && . "$file"
done
unset file
