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
			cd '/root/Downloads'
			git clone 'https://github.com/Und3rf10w/kali-anonsurf.git'
			cd 'kali-anonsurf'
			./installer.sh
		;;
	esac
}

alsamixer(){
	printf "${BLUE}[+] ${GREEN}Do you want to install alsamixer? [Y/N] ${NC}"
	read YES

	case $YES in
		y | Y)
			printf "${BLUE}Installing alsamixer... ${NC} \n"
			apt-get install libasound2 alsa-utils alsa-oss 
		;;
	esac
}

menu(){
	printf "${BLUE}[+] ${GREEN}Do you want to install Main Menu? [Y/N] ${NC}"
	read YES

	case $YES in
		y | Y)
			printf "${BLUE}Installing Main Menu... ${NC} \n"
			apt-get install alacarte 
		;;
	esac
}

ferret(){
	printf "${BLUE}[+] ${GREEN}Do you want to install ferret? [Y/N] ${NC}"
	read YES

	case $YES in
		y | Y)
			printf "${BLUE}Installing ferret... ${NC} \n"
			dpkg --add-architecture i386 && apt-get update && apt-get install ferret-sidejack:i386
		;;
	esac
}

# Main

sublime
anonsurf
alsamixer
ferret
menu



	
