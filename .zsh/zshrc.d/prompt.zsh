# -*- mode: shell-script -*-

# We would like to show data and time on the right side of shell.
# However, RPROMPT will be shown on the cursor line instead of information line.
# So I calculate the width and the prompt and inserts the necessary spaces.
#

IDNTBAR_COLOR=$PR_GREEN
PATHBAR_COLOR=$PR_YELLOW
DATEBAR_COLOR=$PR_BLUE
INFOBAR_COLOR=$PR_MAGENTA

# When the shell is shown by SSH, we would like to indicate it.
# Currently, we change the  IDNTBAR color.

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    IDNTBAR_COLOR=$PR_CYAN
fi

function precmd {
    local TERMWIDTH
    (( TERMWIDTH = $COLUMNS - 1 ))

    # identifier part
    IDNTBAR=${USER}@${SHORTHOST}
    # path part
    PATHBAR=\[${(%):-%~}\]
    # some other information e.g. git branch
    local GIT_BRANCH_NAME=`show-git-current-branch` 
    if [ -z $GIT_BRANCH_NAME ]; then
        INFOBAR=""
    else
        INFOBAR="[$GIT_BRANCH_NAME]"
    fi
    # current date
    DATEBAR=${(%):-(%0*/%w)}
    # filler
    PROMPT_FILLER=''

    # calculate the required length of filler.
    local idntbar_size=${#IDNTBAR}
    local pathbar_size=${#PATHBAR} 
    local infobar_size=${#INFOBAR}
    local datebar_size=${#DATEBAR}
    local total_size=$(($idntbar_size + $pathbar_size + $infobar_size + $datebar_size + 3))

    # if path is too long to fit, short path should be used.
    # TODO: Not implemented yet!
    if [[ $total_size -gt $TERMWIDTH ]]; then
        (( PR_PWDLEN = $TERMWIDTH - $idntbar_size - $datebar_size - $infobar_size))
    else
        PROMPT_FILLER="\${(l.(($TERMWIDTH - $total_size))).. .)}"
    fi
}

setprompt() {
    setopt prompt_subst
    MARK=${(%):-%(!.#.$)}
    PROMPT='$IDNTBAR_COLOR$IDNTBAR $PATHBAR_COLOR$PATHBAR ${(e)PROMPT_FILLER} $INFOBAR_COLOR$INFOBAR $DATEBAR_COLOR$DATEBAR
$PR_NO_COLOR$MARK '
}

setprompt
