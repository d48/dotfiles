# path aliases
alias bm="cd ~/Sites/beachmint/"
alias dl="cd ~/Downloads/"
alias down="cd ~/Downloads/"
alias download="cd ~/Downloads/"
alias downloads="cd ~/Downloads/"
alias ryan="cd ~/Sites/ryan/"
alias sand="cd ~/Sites/ryan/sandbox/"
alias home="cd ~"
alias jshint="hint"
alias ls="ls -a"
alias lsl="ls -lha"
alias lsa="ls -lht" # sort by date ascending
alias lsd="ls -lhtr" # sort by date descending
alias devconf='cd /private/etc/apache2/users/' 
alias phpini='cd /private/etc/'

# command aliases
alias selcon='./tests/test-core/bin/seleniumRunner config'
alias tmux="tmux -2"
alias sub="subl"
alias vi="mvim -v"
alias pub="phpunit --bootstrap TestHelper.php"


# path/var settings
export PATH=/Users/rregalado/node_modules/jshint/bin:$PATH
export PATH=/Users/rregalado/Sites/beachmint/ci/bin:$PATH
export PATH=/Users/rregalado/Sites/beachmint/ci/phpunit-git-deploy/bin:$PATH
export PATH=/Users/rregalado/node_modules/.bin:$PATH
export PATH=/Users/rregalado/Sites/ryan/sandbox/less/lessphp:$PATH
export PATH=/usr/local/Cellar/macvim/7.3-64:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/.bin:$PATH
export PATH=~/Sites/beachmint/cli/bin:$PATH
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# File commands
set autoindent
set mouse=a
set clipboard=unnamed
set nobackup
set nowritebackup

# bash prompt
function current { branch=`git current`; if [[ -n $branch ]]; then echo " ($branch)"; fi }
export PS1='\n<\033[1;36m\]\u\[\033[0m\]> \033[1;36m\]$(date +%m-%d) \@\033[0m\] \w\n\033[1;33m\]$(current)\[\033[0m\] \033[1;36m\]⚡\[\033[0m\] ' 

# vi commands in bash
set -o vi

# git
alias ga="git add"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gs="git status"
alias gitpull="git pull origin master;git submodule init;git submodule update;cd platform;git submodule init;git submodule update"
source ~/.git-completion.sh

#vm commands
function vmlog() { ssh bmdev "tail -f /var/log/nginx/\"$@\".log" ;}
complete -o "nospace" -W "shoe_error beauty_error home_error inti_error js_error api_error jewel_error style_error" vmlog
alias vmrestart='ssh bmdev "shutdown -r now" && echo "Restarting..."'
alias vmchef='ssh bmdev "chef-solo ~/single_run.rb"'
