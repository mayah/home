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
# /usr/local/bin should be prioritized to /usr/bin.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

# hostname setup
source $ZDOTDIR/.zshenv_hostname

# machine specific setup
# hostbase setup
for i in $ZDOTDIR/platform/.zshenv_*; do
  source $i
done
