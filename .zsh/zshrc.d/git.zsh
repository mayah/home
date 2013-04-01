# -*- mode: shell-script -*-

autoload bashcompinit
bashcompinit

# We would like to use the system installed git-completion.bash as much as possible.
if [ -e /usr/share/git-core/git-completion.bash ]; then
    source /usr/share/git-core/git-completion.bash
elif [ -e /etc/bash_completion.d/git ]; then
    source /etc/bash_completion.d/git
fi

# zsh has an abstraction layer for VCS. Let's use it.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' formats '%b'
zstyle ':vcs_info:*' actionformats '%b|%a'

# This function will be used prompt.zsh
function show-git-current-branch {
    if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
        return
    fi
    vcs_info

    # It might be a good idea to show git status, but it's too heavy
    # in chromium or WebKit.
    echo "$vcs_info_msg_0_"
}

# Defining aliases of commands I often use.
alias gst="git status -sb"
alias gbr="git branch"
alias grom="git rebase origin/master"
