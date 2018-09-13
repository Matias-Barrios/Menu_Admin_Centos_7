#!/bin/bash

function Ver_estado_de_los_servicios() {
    clear

    echo "${MAGENTA}########################################################${NORMAL}"
    echo "${GREEN} Estado de los servicios ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    for serv in "${arr_nombre_servicios[@]}"
    do
        #systemctl status "$serv"
        [[ $? -eq 0 ]] && printf "${WHITE} Servicio : ${CYAN} ${serv} ${WHITE} Status : ${GREEN}UP${NORMAL}" || printf "${WHITE} Servicio : ${CYAN} ${serv} ${WHITE} Status : ${RED}DOWN${NORMAL}"

        
        printf '\n'
    done
        
    read -s -n 1
}