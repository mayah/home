# -*- mode: shell-script -*-
#
# .zshrc
#  

source $ZDOTDIR/.zshrc_util

# colors
source $ZDOTDIR/.zshrc_colors

# utility functions
source $ZDOTDIR/.zshrc_functions

# basic settings
bindkey -e               # use emacs key binding
setopt prompt_subst      # substitute environmental variables in a shell.
setopt auto_pushd        # make cd pushd
setopt print_eight_bit   # accept 8-bit character.
setopt auto_param_slash  #
setopt magic_equal_subst #
setopt NO_flow_control   # inactivate C-s and C-q.
unsetopt promptcr
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# history 
source $ZDOTDIR/.zshrc_history

# auto completion
autoload -Uz compinit
compinit -u

# prompt
source $ZDOTDIR/.zshrc_prompt

# git
autoload bashcompinit
bashcompinit
source $ZDOTDIR/git-completion.bash

# aliases
source $ZDOTDIR/.zshrc_aliases

# KGB
source $ZDOTDIR/.zshrc_kgb

