# -*- mode: shell-script -*-

function add_path_if_any() {
    if [ -d "$1" ]; then
        export PATH=$1:$PATH
    fi
}

add_path_if_any "/usr/local/opt/go/libexec/bin"
add_path_if_any "/usr/local/texlive/2016/bin/x86_64-darwin"
add_path_if_any "/usr/local/opt/openssl/bin"
add_path_if_any "/usr/local/opt/mysql-client/bin"
add_path_if_any "/usr/local/go/bin"
add_path_if_any "$HOME/opt/bin"
add_path_if_any "$HOME/opt/goroot/bin"
add_path_if_any "$HOME/opt/go/bin"
add_path_if_any "$HOME/opt/depot_tools"
add_path_if_any "$HOME/opt/go_appengine"
add_path_if_any "$HOME/opt/google-cloud-sdk/bin"
add_path_if_any "$HOME/homebrew/bin"
add_path_if_any "$HOME/Android/Sdk/platform-tools"
add_path_if_any "$HOME/Android/Sdk/tools"
add_path_if_any "$HOME/.cargo/bin"
add_path_if_any "$HOME/.nodebrew/current/bin"

# remove google3 JDK for android work
export PATH=${PATH/\/usr\/local\/buildtools\/java\/jdk\/bin:/}
