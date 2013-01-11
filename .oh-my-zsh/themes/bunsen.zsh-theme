function virtualenv_info {
	    [ $VIRTUAL_ENV  ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
	    [ -f ~/.box-name  ] && cat ~/.box-name || hostname -s
}

# 01/03/13 - 4:23 AM
function my_date {
	date "+%m/%d/%y %H:%M%p"
}

PROMPT='
<%{$fg_bold[cyan]%}%n%{$reset_color%}> %{$fg[cyan]%}$(my_date)%{$reset_color%} in %{$fg_bold[yellow]%}${PWD/#$HOME/~}/ %{$reset_color%}$(git_prompt_info)$(virtualenv_info)%(?,,%{${fg_bold[blue]}%}[%?]%{$reset_color%} )
%{$fg_bold[cyan]%} ➣ %{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[magenta]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓"
	
local return_status="%{$fg[red]%}%(?..⤬)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'
