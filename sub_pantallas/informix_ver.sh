#!/bin/bash

function informix_ver() {
    clear

    local nombre_usuario

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Ver estado de informix ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    
    printf "${YELLOW}\b"
    onstat -l
    printf "${NORMAL}\n"
    printf "\n"
    
    read -s -n 1
    return
    
}

