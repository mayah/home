# -*- mode: shell-script -*-

# bash.zsh contains useful function/variable definitions.

# Define colors.
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
PR_NO_COLOR="%{$terminfo[sgr0]%}"

function func-ls() {
    case `uname` in
        Darwin)
            ls -GF
            ;;
        FreeBSD)
            ls -GF
            ;;
        *)
            ls -CF --color=auto
            ;;
    esac        
}
