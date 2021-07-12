## zsh dotfile path
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -f ~/.functions ]; then
    source ~/.functions
else
    print "~/.functions not found."
fi

# Source Prezto.
#if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
#fi

#source ~/.zplug/init.zsh

# Plugins
#zplug "plugins/git",   from:oh-my-zsh
#zplug "plugins/osx",   from:oh-my-zsh
#zplug "zsh-users/zsh-autosuggestions"
#zplug "clvv/fasd"
#zplug "b4b4r07/enhancd"
#zplug "junegunn/fzf"
#zplug "Peltoche/lsd"
#zplug "g-plane/zsh-yarn-autocompletions"
#zplug "romkatv/powerlevel10k", as:theme, depth:1

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
