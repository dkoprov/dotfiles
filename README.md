# dkoprov/dotfiles

## Introduction

The basic structure of my dotfiles are based on Zach Holman's [holman/dotfiles](https://github.com/holman/dotfiles) && Jonathan Clem's [jclem/dotfiles](https://github.com/jclem/dotfiles) repositories. Essentially, configuration files are grouped by topic (i.e. "git", "vim", "zsh", etc.). `*.zsh` files are sourced automatically, and a file named `something.symlink` will by symlinked to `~/.something`.

## Installation

1. Clone the repository `git clone git@github.com:dkoprov/dotfiles.git`
2. `cd` into the repo `cd dotfiles`
3. Run the installer `./install`
4. Get submodules `git submodule update --init`
