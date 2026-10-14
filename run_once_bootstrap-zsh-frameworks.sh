#!/bin/sh
# run_once: idempotent first-run bootstrap for a new Mac.
# Clones the zsh framework and prompt theme that ~/.zshrc expects,
# skipping anything that already exists. No config is overwritten.
set -e

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Cloning oh-my-zsh..."
  git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
else
  echo "oh-my-zsh already present, skipping."
fi

if [ ! -d "$HOME/powerlevel10k" ]; then
  echo "Cloning powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/powerlevel10k"
else
  echo "powerlevel10k already present, skipping."
fi
