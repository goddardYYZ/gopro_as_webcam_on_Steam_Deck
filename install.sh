#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE="\033[0;34m"
NC='\033[0m' # No Color

function red {
    printf "${RED}$@${NC}\n"
}

function green {
    printf "${GREEN}$@${NC}\n"
}

function yellow {
    printf "${YELLOW}$@${NC}\n"
}

function blue {
    printf "${BLUE}$@${NC}\n"
}

#chmod +w /usr/local/sbin

#mkdir -p /usr/local/sbin/gopro

sudo curl -sS https://raw.githubusercontent.com/jschmid1/gopro_as_webcam_on_linux/master/gopro -o /usr/local/sbin/gopro

chmod +x /usr/local/sbin/gopro

alias gopro="sudo gopro"

blue "**********************"
printf "\n\n"
green "The GoPro install script succeeded"
yellow "Run with with: "
green "sudo gopro"
yellow "or"
green "gopro"
printf "\n\n"
blue "**********************"
