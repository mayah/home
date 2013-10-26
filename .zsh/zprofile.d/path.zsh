# -*- mode: shell-script -*-

case `uname` in
    Darwin)
        # Prepare MacPorts PATHs.
        export PATH=/opt/local/bin:/opt/local/sbin:$PATH
        export MANPATH=/opt/local/man:$MANPATH
        export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH
        export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH

        # If C_INCLUDE_PATH is like "/opt/local/include:", gcc searches "." also.
        # This might cause problems.
        if [ -n "$C_INCLUDE_PATH" ]; then
            export C_INCLUDE_PATH=/opt/local/include:$C_INCLUDE_PATH
        else
            export C_INCLUDE_PATH=/opt/local/include
        fi

        # ditto.
        if [ -n "$CPLUS_INCLUDE_PATH" ]; then
            export CPLUS_INCLUDE_PATH=/opt/local/include:$CPLUS_INCLUDE_PATH
        else
            export CPLUS_INCLUDE_PATH=/opt/local/include
        fi

        # Adds PostgreSQL paths.
        export PATH=/Library/PostgreSQL/9.1/bin:$PATH
        export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH
        ;;
    *)
        ;;
esac

# I often put my personal binaries into my home directory.
export PATH=~/usr/depot_tools:$PATH
export PATH=~/usr/bin:$PATH
export PATH=~/usr/script:$PATH
