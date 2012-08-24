# Colors
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

K="\[\033[0;30m\]"    # black
R="\[\033[0;31m\]"    # red
G="\[\033[0;32m\]"    # green
Y="\[\033[0;33m\]"    # yellow
B="\[\033[0;34m\]"    # blue
M="\[\033[0;35m\]"    # magenta
C="\[\033[0;36m\]"    # cyan
W="\[\033[0;37m\]"    # white

# Emphasis Colors
EMK="\[\033[1;30m\]"
EMR="\[\033[1;31m\]"
EMG="\[\033[1;32m\]"
EMY='\e[1;33m'       # Yellow
EMB="\[\033[1;34m\]"
EMM="\[\033[1;35m\]"
EMC="\[\033[1;36m\]"
EMW="\[\033[1;37m\]"


# Environment setup
export PS1='\n<\[\033[1;36m\]\u\[\033[0m\]>\[\033[1;36m\]\@\[\033[0m\] '"${EMY}"'`git current` '"${White}"'->\W/ ' 
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# directory shortcuts
alias blog="cd ~/Dropbox/Dev/node-mongo-blog/"
alias dl="cd ~/Downloads"
alias downloads="cd ~/Downloads"
alias dotfiles="cd ~/Dropbox/Dev/dotfiles"
alias dot="cd ~/Dropbox/Dev/dotfiles"
alias pro="cd ~/Dropbox/Dev/"
alias dev="cd ~/Dropbox/Dev/"
alias harness="cd ~/Dropbox/Dev/Harness-Media-Website"
alias hmg="cd ~/Dropbox/Dev/Harness-Media-Website"
alias rr="cd ~/Dropbox/Apps/scriptogram/posts"
alias sand="cd ~/Dropbox/Dev/sandbox"
alias k="cd ~/Dropbox/Dev/kenny"
alias hubot="cd ~/Dropbox/Dev/hubot-dev"
alias hu="cd ~/Dropbox/Dev/hubot-dev"
alias kt="cd ~/Dropbox/Dev/kenny/wp-content/themes/chunk-child"
alias wine="cd ~/Dropbox/Dev/sandbox/javascript/backbone/WineCellar/"
alias rails-blog="cd ~/Dropbox/Dev/rails-blog"
alias rb="cd ~/Dropbox/Dev/rails-blog"
# alias testim="cd ~/Dropbox/Dev/testim-app"
alias testim="cd ~/Dropbox/Dev/mytestimony/"
alias mytestimony="cd ~/Dropbox/Dev/mytestimony/"
alias mytestim="cd ~/Dropbox/Dev/mytestimony/"
alias sites="cd ~/Sites/projects/"
alias winecellar="cd ~/Dropbox/Dev/sandbox/javascript/backbone/WineCellar/"
alias ubl="cd ~/Dropbox/Dev/urban-body-laser/"

# utilities
alias size="du -sch"

# Apache - default
alias hosts="cd /etc"
alias httpdconf="cd /private/etc/apache2"
alias restart="sudo apachectl restart"

# Apache - MAMP
# alias restart="/Applications/MAMP/bin/apache2/bin/apachectl restart"
alias httpdconfmamp="cd /Applications/MAMP/conf/apache"
alias vhostsmamp="cd /Applications/MAMP/conf/apache/extra"
alias vhosts="cd /Applications/MAMP/conf/apache/extra"
alias logmamp="cd /Applications/MAMP/logs"
alias mamplogs="cd /Applications/MAMP/logs"
alias logs="cd /Applications/MAMP/logs"

alias home="cd ~"
alias ls="ls -a"
alias lsl="ls -lha"

# list files by date modified, descending with size in readable units
alias lsd="ls -lht"
alias lst="ls -lht"
# list files by date modified, ascending with size in readable units
alias lsa="ls -lhtr"
alias lsr="ls -lhtr"

# Application Shortcuts
alias vi="mvim -v"
alias sub="subl"

# File commands
set autoindent			
set mouse=a			# cursor where mouse clicks
set clipboard=unnamed	# to system buffer
set nobackup			 
set nowritebackup		# Don't write backup files
set hlsearch			# highlight search word

# Path setup
export ANT_HOME=/usr/local/ant
export PATH=${PATH}:${ANT_HOME}/bin
export PATH=~/.bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin/node:$PATH

# node modules
export PATH=$PATH:~/node_modules/.bin

# Git setup
alias ga="git add"
alias gc="git commit -m"
alias gs="git status;git stash list"
alias gcam="git commit -am"
source ./.git-completion.sh

# set vi mode in bash
set -o vi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# tmux
