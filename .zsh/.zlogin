# -*- mode: shell-script -*-

source $ZDOTDIR/base.zsh

for i in $(setopt nullglob; echo $ZDOTDIR/zlogin.d/*.zsh); do
    source $i
done

