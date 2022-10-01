function exaConfig(){
        echo "Configuring exa..."
        echo "alias ls='exa --icons --color=always --group-directo>
       	echo "alias ll='exa -alF --icons --color=always --group-di>
       	echo "alias la='exa -a --icons --color=always --group-dire>
       	echo "alias l='exa -F --icons --color=always --group-direc>
       	echo "alias l.='exa -a | egrep "^\."'" >> ~/.zshrc
}

function vbInst(){
	sudo dnf -y install @development-tools && sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras
	cat <<EOF | sudo tee /etc/yum.repos.d/virtualbox.repo
	[virtualbox]
	name=Fedora $releasever - $basearch - VirtualBox
	baseurl=http://download.virtualbox.org/virtualbox/rpm/fedora/36/\$basearch
	enabled=1
	gpgcheck=1
	repo_gpgcheck=1
	gpgkey=https://www.virtualbox.org/download/oracle_vbox.asc
	EOF
	sudo dnf search virtualbox
	sudo dnf makecache --refresh
	sudo dnf install VirtualBox-6.1
	sudo usermod -a -G xboxusers $USER
	newgrp xboxuser
	id $USER
}
exaConfig
vbInst
