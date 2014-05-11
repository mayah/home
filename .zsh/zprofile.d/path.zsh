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

# I often put my personal binaries into my home directory.
export PATH=~/usr/depot_tools:$PATH
export PATH=~/usr/bin:$PATH
export PATH=~/usr/script:$PATH
