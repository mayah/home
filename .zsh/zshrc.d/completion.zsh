# -*- mode: shell-script -*-

autoload -Uz compinit
compinit -u

# load google-cloud-sdk completion.zsh.inc if any.
if [ -e $HOME/google-cloud-sdk/completion.zsh.inc ]; then
    source $HOME/google-cloud-sdk/completion.zsh.inc
fi

if [ -e /usr/local/share/zsh/site-functions/go ]; then
    source /usr/local/share/zsh/site-functions/go
fi
