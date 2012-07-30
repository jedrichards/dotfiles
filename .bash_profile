# Load in all our bash settings
for file in ~/.{personal,prompt,aliases,functions,exports}
do
	[ -r "$file" ] && . "$file"
done
unset file
