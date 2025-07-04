#!/usr/bin/env bash

sudo pacman -Syu --noconfirm --needed
sudo pacman -S --noconfirm --needed base-devel gcc ripgrep btop
sudo pacman -S --noconfirm --needed git firefox neovim ghostty paku fzf rofi-wayland laygit copyq tmux chromium
sudo pacman -S --noconfirm --needed greetd-tuigreet
sudo pacman -S --noconfirm --needed hyprlock
sudo pacman -S --noconfirm --needed ttf-font-awesome waybar ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols

git clone git@github.com:fmpisantos/ghostty.git ~/.config/ghostty
git clone git@github.com:fmpisantos/nvim.git ~/.config/nvim
echo "alias vim='nvim'" >> ~/.bashrc
git clone git@github.com:fmpisantos/tmux.git ~/.config/tmux
chmod +x ~/.config/tmux/init.sh && ~/.config/tmux/init.sh
git clone git@github.com:fmpisantos/hypr.git ~/.config/hypr
git clone git@github.com:fmpisantos/greetd.git ~/.config/greetd
chmod +x ~/.config/greetd/init.sh && ~/.config/greetd/init.sh

sudo pacman -R kitty
echo "set completion-ignore-case On" >> ~/.inputrc
