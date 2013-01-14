# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export EDITOR='mvim -f --nomru -c "au VimLeave * !open -a iTerm"'


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mvim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# traverse history on prompt
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey "^P" history-search-backward 
bindkey "^N" history-search-forward

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

POWERLINE_FULL_CURRENT_PATH="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/.bash_profile


# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/.rbenv/bin


# Ruby settings
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
# set ruby version to use
rvm 1.9.3

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

set EDITOR=mvim


# Nice git settings


# alias gb='git branch -a -v'
# alias gs='git status'
# alias gd='git diff | mate'
# alias gca='git commit -av'
# alias gcia='git commit -v -a -i'
# alias grm='git ls-files --deleted | xargs git rm'
# alias gcm='git checkout master'
# alias gpr='git pull --rebase'
# alias gspr='git stash; gpr; git stash apply'
# alias pull='git pull --rebase'
# alias push='git push'
# alias gre='git rebase master'
# alias gitl='git log --pretty=format:"%h %Cblue %an %Cred %s"'

# Custom zshrc prompt
function powerline_precmd() {
  export PS1="$(~/.vim/bundle/powerline-bash/powerline-bash.py $? --shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd
