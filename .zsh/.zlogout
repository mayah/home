# -*- mode: shell-script -*-

source $ZDOTDIR/base.zsh

for i in $(setopt nullglob; echo $ZDOTDIR/zlogout.d/*.zsh); do
    source $i
done

clear
