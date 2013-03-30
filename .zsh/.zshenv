# -*- mode: shell-script -*-

source $ZDOTDIR/base.zsh

for i in $(setopt nullglob; echo $ZDOTDIR/zshenv.d/*.zsh); do
    source $i
done

for i in $(setopt nullglob; echo $ZDOTDIR/zshenv_platform.d/*.zsh); do
    source $i
done
