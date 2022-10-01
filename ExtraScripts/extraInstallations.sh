#!/bin/bash
function flatpakInst(){
	sudo dnf install flatpak -y &> /dev/null
  	sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &> /dev/null
}

function oh-my-zshInst(){
	echo "Installing oh-my-zsh..."
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function spotifyInst(){
	while true
	do
		read -p "Do you want to install spotify? y/n: " opc
		case $opc in
			y|Y)
				echo "Installing spotify..."
				sudo flatpak install flathub com.spotify.Cliente
				sudo flatpak update
				break
			;;
			n|N)
				echo "Installation refuse"
				break
			;;
			*)
				echo "Choose a valid option"
			;;
		esac
	done
}

function vscodeInst(){
	echo "Installing vscode..."
	sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
	sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
	sudo dnf check-update &> $s_null
	sudo dnf install code -y &> $s_null
}

function main(){
	echo "================================================"
	echo "Some programs are going to install themselves!!!"
	echo "================================================"
	flatpakInst
	oh-my-zshInst
	spotifyInst
	vscodeInst
}

main
