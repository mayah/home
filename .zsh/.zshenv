#
# Basic Settings
#

if which vi >& /dev/null ; then
    export EDITOR=vi
    export GIT_PAGER="lv -c"
fi

#
# Path Settings: 
#
export PATH=~/usr/depot_tools:$PATH
export PATH=~/usr/bin:$PATH
export PATH=~/usr/script:$PATH
export PATH=~/repos/chromium.git:$PATH
export PATH=~/repos/chromium.git/src/third_party/llvm-build/Release+Asserts/bin:$PATH
export PATH=/usr/texbin/:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# /usr/local/bin should be prioritized to /usr/bin.
export PATH=/usr/local/bin:$PATH

export PATH=/Library/PostgreSQL/9.1/bin:$PATH

export MANPATH=/opt/local/man:$MANPATH
export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/opt/local/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/local/include:$CPLUS_INCLUDE_PATH

# hostname setup
source $ZDOTDIR/.zshenv_hostname

# machine specific setup
# hostbase setup
for i in $ZDOTDIR/platform/.zshenv_*; do
  source $i
done
