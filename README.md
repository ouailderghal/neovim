# Neovim Configuration

This repository contains my personalized Neovim configuration files. The structure and purpose of each file and
directory are detailed below.

## Files and Directories

- `after/ftplugin/`: This directory contains filetype-specific configurations for various programming languages. 
- `init.lua`: This is the main entry point for Neovim configuration. It loads the settings, keybindings, and plugins.
- `lazy-lock.json`: This file contains the version locks for the plugins managed by the `lazy.nvim` plugin manager.

- `lua/ouailderghal/`: Contains various configuration modules:
    * `globals.lua`: Global variables and settings.
    * `groups.lua`: Auto-command groups definitions.
    * `keybindings.lua`: Custom keybindings.
    * `lazy.lua`: Configuration for the `lazy.nvim` plugin manager.
    * `options.lua`: General Neovim options.
    * `plugins`: Directory for plugin configurations.

## Installation

To use this configuration, clone this repository into your Neovim configuration directory (usually `~/.config/nvim`).
Make sure you have Neovim `v0.10.3` or greater installed.

```sh
git clone https://github.com/ouailderghal/neovim ~/.config/nvim
```
