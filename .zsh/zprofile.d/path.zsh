# -*- mode: shell-script -*-

function add_path_if_any() {
    if [ -d "$1" ]; then
        export PATH=$1:$PATH
    fi
}

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

add_path_if_any "/usr/local/opt/go/libexec/bin"
add_path_if_any "$HOME/opt/go_appengine"
add_path_if_any "$HOME/opt/bin"
add_path_if_any "$HOME/opt/depot_tools"
add_path_if_any "$HOME/usr/bin"
add_path_if_any "$HOME/usr/script"
