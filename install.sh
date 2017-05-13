#!/bin/bash
BLUE='\033[1;94m'
GREEN='\033[1;92m'
RED='\033[1;91m'
NC='\033[1;00m'



sublime(){
	printf "${BLUE}[+] ${GREEN}Do you want to install Sublime Text 3? [Y/N] ${NC}"
	read YES

	case $YES in
		y | Y)
			printf "${BLUE}Installing Sublime Text 3... ${NC} \n"
			#cd '/root/Downloads'
			wget 'https://download.sublimetext.com/sublime-text_build-3126_amd64.deb'
			dpkg -i 'sublime-text_build-3126_amd64.deb'
		;;
	esac
	
}

anonsurf(){
	printf "${BLUE}[+] ${GREEN}Do you want to install anonsurf? [Y/N] ${NC}"
	read YES

	case $YES in
		y | Y)
			printf "${BLUE}Installing anonsurf... ${NC} \n"
			#cd '/root/Downloads'
			cd '/root/Desktop'
			git clone 'https://github.com/Und3rf10w/kali-anonsurf.git'
			cd 'kali-anonsurf'
			cat ./installer.sh
		;;
	esac
}


# Main

sublime
anonsurf



	