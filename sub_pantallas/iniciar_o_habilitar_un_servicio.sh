#!/bin/bash

function iniciar_o_habilitar_un_servicio() {
    clear

    local iniciar
    local habilitar

    echo "${MAGENTA}########################################################${NORMAL}"
    echo "${GREEN} Iniciar o habilitar un servicio ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    printf "Ingrese un nombre de servicio : "
    read service_name
    
    printf "\n"
    echo "¿Desea ${YELLOW}iniciar${NORMAL} el servicio? (s/n)"
    read -s -n 1 iniciar
    [[ ! "$iniciar" == "s" && ! "$iniciar" == "n" ]] &&  iniciar_o_habilitar_un_servicio
    
    echo "¿Desea ${YELLOW}habilitar${NORMAL} el servicio? (s/n)"
    read -s -n 1 habilitar
    [[ ! "$habilitar" == "s" && ! "$habilitar" == "n" ]] &&  iniciar_o_habilitar_un_servicio

    printf "\n"
    printf "\n"

    [[ "$iniciar" == "s" ]] && systemctl stop $service_name || echo "No se ha iniciado ningun servicio"
    [[ $? -ne 0 ]] && echo "Algo ha ${RED}fallado${NORMAL} al intentar ${YELLOW}iniciar${NORMAL} el servicio!!" || 
    [[ "$habilitar" == "s" ]] && systemctl disable $service_name || echo "No se ha habilitado ningun servicio"
    [[ $? -ne 0 ]] && echo "Algo ha ${RED}fallado${NORMAL} al intentar ${YELLOW}habilitar${NORMAL} el servicio!!"
    
    read -s -n 1
    return
      
}