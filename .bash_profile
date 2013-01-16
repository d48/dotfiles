if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# if [ -f $(brew --prefix)/etc/bash_completion ]; then
# 	. $(brew --prefix)/etc/bash_completion
# fi
 
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh"

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
# for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
for file in ~/.{extra,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'
