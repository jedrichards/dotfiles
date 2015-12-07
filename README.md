# dotfiles

A selection of personal dotfiles designed for OSX and Ubuntu.

Inspired and in many cases shamelessly copy and pasted from [dotfiles.github.com](http://dotfiles.github.com/), especially [github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

### Usage

The repo should be cloned to some sensible location on your system, for example `~/work/dotfiles/`. The following command can them be used to copy these dot files to your home directory:

```sh
$ ./publish.sh
```

This will interactively copy each file one-by-one asking permission each time any existing file will be overwritten. You should restart your shell once publishing has completed.

### Secrets

Some settings are personal, secret or otherwise not appropriate for putting in a public repo. Such settings could include but are not limited to Git username and email config settings or starting and configuring tools particular to your system.

If present, the publish script will attempt to copy a file called `secrets` to `~/.secrets`. This file is ignored from this repo, so if you want to use this feature then manually add the file.

### osx

Copied from mathiasbynen's [mths.be/osx](http://mths.be/osx) file, this isn't a dotfile in the strict sense. It doesn't live in your home directory and run automatically, rather you can manually invoke it whenever you want to apply the OSX settings contained within it. Designed to be used to quickly set some familiar defaults when setting up a new system or user account.

	./.osx
