# -*- mode:shell-script -*-

# Defining general aliases.
# Each .zsh file may contain other aliases.

# I would like to use 'open' as well in non-Mac environments.
# TODO(mayah): When we have open, we should not override it?
if [ -e /usr/bin/cygstart ]; then
    alias open="cygstart"
elif [ -e /usr/bin/xdg-open ]; then
    alias open="xdg-open"
fi

# TODO(mayah): We might want to genelize this.
case `uname` in
    Darwin)
        alias ls="ls -GF"
        ;;
    FreeBSD)
        alias ls="ls -GF"
        ;;
    Linux)
        alias ls="ls -CF --color"
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

alias la="ls -a"
alias ll="ls -l"
alias lla="ls -al"
alias lal="ls -al"