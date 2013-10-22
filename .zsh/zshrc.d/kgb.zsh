# -*- mode: shell-script -*-

mkdir -p ~/.kgb/${SHORTHOST}/commands

preexec() {
  kgb_report.py 'commands' "$1" &!
  # echo `date` "	" "$1" >> $HOME/.kgb/$SHORTHOST/commands/`date +%Y%m%d` &!
}
