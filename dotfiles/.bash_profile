
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

eval "$(rbenv init -)"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
