# Creates a temporary space in ~/tmp.
function tmpspace() {
  (
    # Creates a temporary space.
    d=$(mktemp -d "${HOME}/tmp/tmpspace.XXXXXXXX") && cd "$d" || exit 1
    # execute a new shell.
    "$SHELL"
    s=$?
    if [[ $s == 0 ]]; then
      rm -rf "$d"
    else
      echo "Directory '$d' still exists." >&2
    fi
    exit $s
  )
}

alias tempspace=tmpspace
alias mkjunk=tmpspace
