# Load the default .profile

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions,git-completion.bash}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 