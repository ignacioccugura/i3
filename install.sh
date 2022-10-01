s_null=/dev/null
function welcome(){
	echo "==================================================================================="
	echo "Welcome $(whoami), this script configures your i3wm including essencials programs!"
	echo "==================================================================================="
}




#All programs
function installations(){
	cp programsToInstall ~/programsToInstall
	input="/home/$(whoami)/programsToInstall"
	while IFS= read -r line
	do
		echo "Installing $line ..."
		sudo dnf install -y $line &> $s_null
	done < $input
}

function extra(){
	sh ExtraScripts/extraConfigurations.sh
	sh ExtraScripts/extraInstallations.sh
}

function main(){
	#update pkgs
	sudo dnf update -y
	installations
	extra
}

welcome
main
