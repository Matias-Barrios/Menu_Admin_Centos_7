#!/bin/bash

function parar_o_deshabilitar_un_servicio() {
    clear

    local detener
    local deshabilitar

    echo "${MAGENTA}########################################################${NORMAL}"
    echo "${GREEN} Parar o deshabilitar un servicio ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    printf "Ingrese un nombre de servicio : "
    read service_name
    
    printf "\n"
    echo "¿Desea ${YELLOW}detener${NORMAL} el servicio? (s/n)"
    read -s -n 1 detener
    [[ ! "$detener" == "s" && ! "$detener" == "n" ]] &&  parar_o_deshabilitar_un_servicio
    
    echo "¿Desea ${YELLOW}deshabilitar${NORMAL} el servicio? (s/n)"
    read -s -n 1 deshabilitar
    [[ ! "$deshabilitar" == "s" && ! "$deshabilitar" == "n" ]] &&  parar_o_deshabilitar_un_servicio

    printf "\n"
    printf "\n"

    [[ "$detener" == "s" ]] && systemctl stop $service_name || echo "No se ha detenido ningun servicio"
    [[ $? -ne 0 ]] && echo "Algo ha ${RED}fallado${NORMAL} al intentar ${YELLOW}detener${NORMAL} el servicio!!"  || echo "${GREEN}EXITO!${NORMAL}"
    [[ "$deshabilitar" == "s" ]] && systemctl disable $service_name || echo "No se ha deshabilitado ningun servicio"
    [[ $? -ne 0 ]] && echo "Algo ha ${RED}fallado${NORMAL} al intentar ${YELLOW}deshabilitar${NORMAL} el servicio!!"  || echo "${GREEN}EXITO!${NORMAL}"
    
    read -s -n 1
    return
      
}