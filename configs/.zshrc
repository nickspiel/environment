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