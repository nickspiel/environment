# Core configuration

export ZSH="/Users/nick.spiel/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source ~/.zshenv

# Powerline10k Theme

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/powerlevel10k/powerlevel10k.zsh-theme

ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Autocorrection

ENABLE_CORRECTION="true"

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

# REA

## Okta MFA

export REA_AS_MFA_METHOD=OKTA_PUSH