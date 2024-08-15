# -*- mode:shell-script -*-

# Defining general aliases.
# Each .zsh file may contain other aliases.

# I would like to use 'open' as well in non-Mac environments.
# Note: Linux has 'open' command, but openvt is suitable for that purpose. Overriden.
if [ -e /usr/bin/cygstart ]; then
    alias open="cygstart"
elif [ -e /usr/bin/xdg-open ]; then
    alias open="xdg-open"
fi

# TODO(mayah): We might want to generalize this.
case `uname` in
    Darwin)
        alias ls="ls -GF"
        ;;
    FreeBSD)
        alias ls="ls -GF"
        ;;
    Linux)
        alias ls="ls -CF --color"
        alias pbcopy="xsel --clipboard --input"
        alias pbpaste="xsel --clipboard --output"
        ;;
    *)
        alias ls="ls -CF"
        ;;
esac

# Mistyping ls and cd.
alias lls="ls"
alias sl="ls"
alias l="ls"
alias s="ls"
alias c="cd"
alias d="cd"
alias ccd="cd"
alias dcd="cd"

alias la="ls -a"
alias ll="ls -l"
alias lla="ls -al"
alias lal="ls -al"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"

# This will enable us to use aliases in sudo.
# (If alias finishes with a space or tab, the shell will check if the next command is also aliased.)
alias sudo='sudo '

# I often use 'ps aux | grep'. Let's define it.
alias pag="ps aux | grep"

alias odx="od -tx1z -Ax"

# --- git aliases
alias gst="git status"
alias gbr="git branch"
alias grom="git rebase origin/master"
alias griom="git rebase -i origin/master"
alias gomen="git commit --amend"
alias gomi="git commit -m tmp"
alias gch="git checkout"
alias gcm="git checkout master"

