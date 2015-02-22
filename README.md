# dotfiles

A selection of personal dotfiles designed for OSX and Ubuntu.

Inspired and in many cases shamelessly copy and pasted from [dotfiles.github.com](http://dotfiles.github.com/), especially [github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

### Usage

The repo should be cloned to some sensible location on your system, for example `~/work/dotfiles/`. The included `publish.sh` script can then used to copy the dotfiles to your home directory. Be careful, the script will clobber any existing files in your home directory that have the same name.

You should restart your shell once publishing has completed.

### Personal settings

`.bash_profile` will attempt to source `.prompt`, `.aliases` and `.exports`, and also a file that isn't checked into source control `.extras`.

I use this file to store any settings that may contain sensitive information.

### .osx

Copied from mathiasbynen's [mths.be/osx](http://mths.be/osx) file, this isn't a dotfile in the strict sense. It doesn't live in your home directory and run automatically, rather you can manually invoke it whenever you want to apply the OSX settings contained within it. Designed to be used to quickly set some familiar defaults when setting up a new system or user account.

	./.osx
