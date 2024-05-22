# -*- mode: shell-script -*-

if which vim >& /dev/null; then
    export EDITOR=vim
elif which vi >& /dev/null; then
    export EDITOR=vi
fi

if which lv >& /dev/null; then
    export GIT_PAGER="lv -c"
fi
