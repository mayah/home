# -*- mode: shell-script -*-

mkdir -p ~/.kgb/${SHORTHOST}/commands

preexec() {
  echo `date` "	" "$1" >> $HOME/.kgb/$SHORTHOST/commands/`date +%Y%m%d` &!
}
