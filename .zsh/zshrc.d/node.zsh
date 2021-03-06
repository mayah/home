if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
    # Load nvm
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    # Load nvm bash_completion
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi
