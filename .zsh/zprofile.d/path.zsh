# -*- mode: shell-script -*-

case `uname` in
    Linux)
        # Prepare for Google Cloud SDK if any.
        if [ -d $HOME/google-cloud-sdk/bin ]; then
            export PATH=$HOME/google-cloud-sdk/bin:$PATH
        fi
        ;;
    *)
        ;;
esac

if [ -d /usr/local/opt/go/libexec/bin ]; then
    export PATH=/usr/local/opt/go/libexec/bin:$PATH
fi

if [ -d ~/opt/go_appengine ]; then
    export PATH=~/opt/go_appengine:$PATH
fi

if [ -d ~/opt/bin ]; then
    export PATH=~/opt/bin:$PATH
fi

# I often put my personal binaries into my home directory.
export PATH=~/usr/depot_tools:~/usr/bin:~/usr/script:$PATH

