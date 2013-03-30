# -*- mode: shell-script -*-

HISTFILE=$ZDOTDIR/history/zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt extendedglob

setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_ignore_all_dups hist_save_nodups
setopt share_history
