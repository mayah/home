# -*- mode: shell-script -*-

#export PATH=~/repos/chromium.git:$PATH
#export PATH=~/repos/chromium.git/src/third_party/llvm-build/Release+Asserts/bin:$PATH
#export PATH=/usr/texbin/:$PATH
#export PATH=/usr/local/bin:$PATH

# For MacPorts environment, we would like to use the following.
# TODO(mayah): We have to limit these settings only for MacOSX?
export PATH=/Library/PostgreSQL/9.1/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH
export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH

# If C_INCLUDE_PATH is like "/opt/local/include:", gcc searches "." also.
# This caused a problem that my compiler test fails!
if [ -n "$C_INCLUDE_PATH" ]; then
    export C_INCLUDE_PATH=/opt/local/include:$C_INCLUDE_PATH
else
    export C_INCLUDE_PATH=/opt/local/include
fi

if [ -n "$CPLUS_INCLUDE_PATH" ]; then
    export CPLUS_INCLUDE_PATH=/opt/local/include:$CPLUS_INCLUDE_PATH
else
    export CPLUS_INCLUDE_PATH=/opt/local/include
fi

# I often put my personal binaries into my home directory.
export PATH=~/usr/depot_tools:$PATH
export PATH=~/usr/bin:$PATH
export PATH=~/usr/script:$PATH
