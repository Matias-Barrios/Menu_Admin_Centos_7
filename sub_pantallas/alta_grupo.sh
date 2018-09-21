#!/bin/bash

function alta_grupo() {
    clear

    local nombre_usuario

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Alta grupo ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    
    printf "Ingrese un ${YELLOW}nombre${NORMAL} de grupo : "
    read nombre_grupo
    printf "\n"
    

    if [[ "$nombre_grupo" !~ [a-z]{1,10} ]]
    then   
        echo "El nombre de grupo ${RED}no tiene un formato correcto!! ${NORMAL}" 
        read -s -n 1
        return
    fi
    printf "\n"
    printf "\n"

    groupadd "$nombre_grupo"  && echo "${GREEN}El grupo ha sido creado correctamente${NORMAL}" || echo "${RED}Algo ha fallado ${NORMAL}" 

    read -s -n 1
    return
    
}

