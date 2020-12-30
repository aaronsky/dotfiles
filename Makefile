DOTFILES_DIR := $(shell echo $(HOME)/dotfiles)
SHELL		 := /bin/sh
UNAME        := $(shell uname -s)
USER         := $(shell whoami)

ifeq      ($(UNAME), Darwin)
  OS := macos
else ifeq ($(UNAME), Linux)
  OS := linux
endif

.PHONY: all install
all: install
install: $(OS)

.PHONY: help usage
.SILENT: help usage
help: usage
usage: 
	@echo usage

XCODE := $(shell command -v xcodebuild 2>/dev/null)
HOMEBREW := $(shell command -v brew 2>/dev/null)
.PHONY: $(OS) linux-deps macos-deps check-xcode homebrew
$(OS): $(OS)-deps setup
linux-deps:
	@echo linux
macos-deps: check-xcode check-homebrew
check-xcode:
ifndef XCODE
	$(error "please install the xcode command line tools before proceeding")
endif
check-homebrew:
ifndef HOMEBREW
	$(error "please install homebrew before proceeding")
endif

.PHONY: setup \
	setup-$(OS) \
	setup-packages \
	setup-fish \
	setup-git \
	setup-vim \
	setup-vscode \
	setup-repos \
	setup-bin
setup: \
	setup-$(OS) \
	setup-packages \
	setup-fish \
	setup-git \
	setup-vim \
	setup-vscode \
	setup-repos \
	setup-bin
setup-packages:
	packages/packages.sh
setup-linux:
	linux/linux.sh
setup-macos:
	macos/macos.sh
setup-fish:
	fish/fish.sh
setup-git:
	git/git.sh
setup-vim:
	vim/vim.sh
setup-vscode:
	vscode/vscode.sh
setup-repos:
	repos/repos.sh
setup-bin:
	bin/bin.sh
