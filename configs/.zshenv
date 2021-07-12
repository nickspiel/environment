# Tell grep to highlight matches
export GREP_OPTIONS='—color=auto'

# Set Okta to automatically use push MFA
export REA_AS_MFA_METHOD=OKTA_PUSH

# Paths

## zsh dotfile path
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## yarn
export PATH="$PATH:$(yarn global bin)"

## grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

## VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
