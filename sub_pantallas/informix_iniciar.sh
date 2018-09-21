#!/bin/bash

function informix_iniciar() {
    clear

    local nombre_usuario

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Intentando iniciar Informix ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    
    printf "${YELLOW}\b"
    onmode -v
    printf "${NORMAL}\n"
    printf "\n"
    
    read -s -n 1
    return
    
}

