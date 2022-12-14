#!/bin/bash

function i3Config(){
	echo "Configuring i3..."
	cp Configs/i3/config ~/.config/i3/config
	sudo cp Wallpapers/wallpaper-defecto.jpg /usr/share/backgrounds/wallpaper-defecto.jpg
}

function alacrittyConfig(){
	echo "Configuring Alacritty..."
	mkdir ~/.config/alacritty
	cp Configs/alacritty.yml ~/.config/alacritty/alacritty.yml
}

function i3blocksConfig (){
	echo "Configuring i3blocks..."
	cp -r i3blocks ~/.config/i3blocks
}

function fontsConfig(){
	echo "Configuring fonts..."
	if [ -d ~/.fonts ]
	then
		cp ttf/*.ttf ~/.fonts
	else
		mkdir ~/.fonts
		cp ttf/*.ttf ~/.fonts
	fi
}

function rangerConfig(){
	"Configuring ranger..."
	cp -r Configs/ranger ~/.config/ranger
}
function main(){
	echo "============================================="
	echo "Programs are going to configure themselves!!!"
	echo "============================================="
	i3Config
	alacrittyConfig
	i3blocksConfig
	fontsConfig
	#rangerConfig
}

main
