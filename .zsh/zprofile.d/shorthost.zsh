# -*- mode: shell-script -*-

# We define SHORTHOST, which kill be used everywhere.
if [[ -e $ZDOTDIR/.hostname ]]; then
    export SHORTHOST=`cat $ZDOTDIR/.hostname`
elif [[ -e ~/.kgb/.hostname ]]; then
    export SHORTHOST=`cat ~/.kgb/.hostname`
else
    export SHORTHOST=`hostname -s`
fi
