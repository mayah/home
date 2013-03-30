# -*- mode: shell-script -*-

source $ZDOTDIR/base.zsh

for i in $(setopt nullglob; echo $ZDOTDIR/zprofile.d/*.zsh); do
    source $i
done
