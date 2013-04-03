# -*- mode: shell-script -*-

source $ZDOTDIR/base.zsh

# If we don't use tmux, .zprofile is not used. Let's read it if we need.
if [ ! ${ZPROFILE_READ:-} ]; then
    source $ZDOTDIR/.zprofile
fi

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

for i in $(setopt nullglob; echo $ZDOTDIR/zshrc.d/*.zsh); do
    source $i
done
