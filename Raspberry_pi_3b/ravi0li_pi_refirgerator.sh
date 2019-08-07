#!/bin/bash

#TODO todo xdxd

normal_color="\e[1;0m"
green_color="\033[1;32m"
red_color="\033[1;31m"
red_color_slim="\033[0;031m"
blue_color="\033[1;34m"
cyan_color="\033[1;36m"
brown_color="\033[0;33m"
yellow_color="\033[1;33m"
pink_color="\033[1;35m"
white_color="\e[1;97m"

function banner () {
    echo "██████╗  █████╗ ██╗   ██╗██╗ ██████╗ ██╗     ██╗    ██████╗ ██╗"
    echo "██╔══██╗██╔══██╗██║   ██║██║██╔═══██╗██║     ██║    ██╔══██╗██║"
    echo "██████╔╝███████║██║   ██║██║██║   ██║██║     ██║    ██████╔╝██║"
    echo "██╔══██╗██╔══██║╚██╗ ██╔╝██║██║   ██║██║     ██║    ██╔═══╝ ██║ v1.0"
    echo "██║  ██║██║  ██║ ╚████╔╝ ██║╚██████╔╝███████╗██║    ██║     ██║ RASPBERRY PI MANAGEMENT"
    echo "╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝    ╚═╝     ╚═╝ BASED ON PYTHON"
    echo
}

function check_root_permissions() {

	user=$(whoami)
    banner
	if [ "${user}" = "root" ]; then
        echo -e "${white_color} You have successfully logged in as root.${normal_color}"
        echo -ne "${white_color} Press ${red_color_slim}[ENTER]${white_color} to continue.${normal_color}"
        read -p ""
        starting
	else
		echo
		echo -e "${white_color} You are not ${red_color}root${white_color}! You must be ${red_color}root${white_color} to run this script."
        echo -e "${white_color} You can type ${red_color_slim}su -${white_color} to be ${red_color}root${white_color}."
        echo
        echo -ne "${white_color} Press ${red_color_slim}[ENTER]${white_color} to continue.${normal_color}"
        read -p ""
        exit 0
	fi
}

function starting () {
    sleep 1
    echo -e "${white_color} Ravioli pi ${normal_color}is starting..."
    CHECKISNT_PIP3=${which python3-pip}
    if [[ CHECKISNT_PIP3 = "" ]]
    then
        apt-get install python3-pip 1>/dev/null
        pip3 install rpi.gpio 1>/dev/null
        echo -e "${white_color} All done! ${normal_color}"
        echo -ne "${white_color} Press ${red_color_slim}[ENTER]${white_color} to continue.${normal_color}"
        read -p ""
        main_menu

    else
        pip3 install rpi.gpio 1>/dev/null
        echo -e "${white_color} All done! ${normal_color}"
        echo -ne "${white_color} Press ${red_color_slim}[ENTER]${white_color} to continue.${normal_color}"
        read -p ""
        main_menu
    fi

}

function main_menu () {
    banner
    #

}