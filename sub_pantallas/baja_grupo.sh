#!/bin/bash

function baja_usuario() {
    clear

    local nombre_usuario

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Baja usuario ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    
    printf "Ingrese un ${YELLOW}nombre${NORMAL} de usuario para eliminar : "
    read nombre_grupo
    printf "\n"
    

  
    if [[ ! "$nombre_grupo" =~ [a-z]{1,10} ]]
    then   
        echo "El nombre de grupo ${RED}no tiene un formato correcto!! ${NORMAL}" 
        read -s -n 1
        return
    fi
    printf "\n"
    printf "\n"

    groupdel "$nombre_grupo"  && echo "${GREEN}El grupo ha sido creado correctamente${NORMAL}" || echo "${RED}Algo ha fallado ${NORMAL}" 

    read -s -n 1
    return
    
}

