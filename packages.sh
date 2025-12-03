#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "Run this script as root."
	exit 1
fi

pacman -Syu
pacman -S hyprland hyprlock hyprpaper waybar wl-clipboard wofi \
	pipewire pipewire-pulse pipewire-jack pipewire-alsa wireplumber pavucontrol \
	noto-fonts noto-fonts-emoji noto-fonts-extra noto-fonts-cjk \
	ttf-hack-nerd ttf-font-awesome freetype2 lib32-freetype2 \
	mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon libglvnd lib32-libglvnd \
	bluez bluez-utils base-devel clang lld lua go \
	alacritty gtk3 gtk4 qalculate-gtk sdl2-compat sdl3 grim slurp wine wine-mono wine-gecko \
	vim nvim unzip zip 7zip unrar htop fastfetch qemu-desktop ripgrep gimp vlc obs-studio \
	corectrl
