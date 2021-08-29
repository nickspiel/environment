# Paths

## nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## yarn

export PATH="$PATH:$(yarn global bin)"

## grep

export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export GREP_OPTIONS='—color=auto'

## VS Code

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Aliases and functions

if [ -f ~/.functions ]; then
  source ~/.functions
else
  print "~/.functions not found."
fi

if [ -f ~/.alias ]; then
  source ~/.alias
else
  print "~/.alias not found."
fi

# REA

## Okta MFA

export REA_AS_MFA_METHOD=OKTA_PUSH