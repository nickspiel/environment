SHELL = /bin/zsh
DOTFILES_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
PATH := $(DOTFILES_DIR)/bin:$(PATH)
NVM_DIR := $(HOME)/.nvm
export XDG_CONFIG_HOME = $(HOME)/.config
export STOW_DIR = $(DOTFILES_DIR)
export ACCEPT_EULA=Y

.PHONY: setup

setup: sudo core packages link refresh defaults

sudo:
ifndef GITHUB_ACTION
	@sudo -v
	@while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
endif

core: brew git npm shell

packages: brew-packages cask-apps node-packages

brew:
	@is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash

git: brew
	@brew install git git-extras

npm:
	if ! [ -d $(NVM_DIR)/.git ]; then git clone https://github.com/creationix/nvm.git $(NVM_DIR); fi
	. $(NVM_DIR)/nvm.sh; nvm install --lts
	
shell:
	@if ! [ -d $(HOME)/.oh-my-zsh ]; then sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended; zsh; fi

stow: brew
	@is-executable stow || brew install stow

link: stow
	@for FILE in $$(\ls -A configs); do if [ -f $(HOME)/$$FILE -a ! -h $(HOME)/$$FILE ]; then \
		mv -v $(HOME)/$$FILE{,.bak}; fi; done
	@mkdir -p $(XDG_CONFIG_HOME)
	@stow -t $(HOME) configs

brew-packages: brew
	brew bundle --file=$(DOTFILES_DIR)/install/Brewfile

cask-apps: brew
	brew bundle --file=$(DOTFILES_DIR)/install/Caskfile || true
	for EXT in $$(cat install/Codefile); do code --install-extension $$EXT; done

node-packages: npm
	. $(NVM_DIR)/nvm.sh; npm install -g $(shell cat install/NPMfile)

refresh: shell link
	source ~/.zshrc

defaults:
	${DOTFILES_DIR}/install/defaults