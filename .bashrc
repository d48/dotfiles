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
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/share/python:$PATH

# node modules
export PATH=$PATH:~/node_modules/.bin

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Less Colors for Man Pages
# export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
# export LESS_TERMCAP_me=$'\E[0m'           # end mode
# export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
# export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
# export LESS_TERMCAP_ue=$'\E[0m'           # end underline
# export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
 
alias man='man -P less'

# set vi mode in bash
set -o vi

# auto-complete history with up and down arrow. type some text [UP]
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
