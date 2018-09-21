#!/bin/bash

function informix_parar() {
    clear

    local nombre_usuario

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Intentando detener Informix ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    
    printf "${YELLOW}\b"
    onmode -m -k
    printf "${NORMAL}\n"
    printf "\n"
    
    read -s -n 1
    return
    
}

