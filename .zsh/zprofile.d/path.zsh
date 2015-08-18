# -*- mode: shell-script -*-

function add_path_if_any() {
    if [ -d "$1" ]; then
        export PATH=$1:$PATH
    fi
}

add_path_if_any "/usr/local/opt/go/libexec/bin"
add_path_if_any "$HOME/opt/go_appengine"
add_path_if_any "$HOME/opt/bin"
add_path_if_any "$HOME/opt/depot_tools"
add_path_if_any "$HOME/usr/bin"
add_path_if_any "$HOME/usr/script"
add_path_if_any "$HOME/homebrew/bin"
add_path_if_any "$HOME/Android/Sdk/platform-tools"
add_path_if_any "$HOME/Android/Sdk/tools"
add_path_if_any "$HOME/google-cloud-sdk/bin"

# remove google3 JDK for android work
export PATH=${PATH/\/usr\/local\/buildtools\/java\/jdk\/bin:/}
