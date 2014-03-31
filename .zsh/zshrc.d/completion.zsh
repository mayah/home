# -*- mode: shell-script -*-

autoload -Uz compinit
compinit -u

# load google-cloud-sdk completion.zsh.inc if any.
if [ -e $HOME/google-cloud-sdk/completion.zsh.inc ]; then
    source $HOME/google-cloud-sdk/completion.zsh.inc
fi
