# -*- mode: shell-script -*-

autoload bashcompinit
bashcompinit

# We would like to use the system installed git-completion.bash as much as possible.
if [ -e /usr/share/git-core/git-completion.bash ]; then
    source /usr/share/git-core/git-completion.bash
elif [ -e /etc/bash_completion.d/git ]; then
    source /etc/bash_completion.d/git
fi

autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null
function rprompt-git-current-branch {
    local name st color gitdir action
    if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
        return
    fi
    name=`git branch 2> /dev/null | grep '^\*' | cut -b 3-`
    if [[ -z $name ]]; then
        return
    fi
    
    gitdir=`git rev-parse --git-dir 2> /dev/null`
    action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"
    
    st=`git status 2> /dev/null`
    if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
        color=%F{green}
    elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
        color=%F{yellow}
    elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
        color=%B%F{red}
    else
        color=%F{red}
    fi
    
    echo "$color$name$action%f%b "
}
