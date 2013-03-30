# -*- mode: shell-script -*-

if which vi >& /dev/null ; then
    export EDITOR=vi
    export GIT_PAGER="lv -c"
fi
