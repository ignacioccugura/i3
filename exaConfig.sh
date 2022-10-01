function exaConfig(){
        echo "Configuring exa..."
        echo "alias ls='exa --icons --color=always --group-directo>
       	echo "alias ll='exa -alF --icons --color=always --group-di>
       	echo "alias la='exa -a --icons --color=always --group-dire>
       	echo "alias l='exa -F --icons --color=always --group-direc>
       	echo "alias l.='exa -a | egrep "^\."'" >> ~/.zshrc
}
exaConfig
