# Environment setup
export PS1="\n<\[\033[1;36m\]\u\[\033[0m\]>\[\033[1;36m\]\@\[\033[0m\] ->\W/ "
export EDITOR=vim
alias pro="cd ~/Dropbox/Dev/"
alias rr="cd ~/Dropbox/Apps/scriptogram/posts"
alias test="cd ~/Dropbox/Dev/test"
alias k="cd ~/Dropbox/Dev/kenny"
alias kt="cd ~/Dropbox/Dev/kenny/wp-content/themes/chunk-child"
alias ubl="cd ~/Dropbox/Dev/urban-body-laser/"
alias home="cd ~"

# File commands
set autoindent			
set mouse=a			# cursor where mouse clicks
set clipboard=unnamed	# yank to system buffer
set nobackup			 
set nowritebackup		# Don't write backup files


# Path setup
export ANT_HOME=/usr/local/ant
export PATH=${PATH}:${ANT_HOME}/bin

# Git setup
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gam="git commit -am"
