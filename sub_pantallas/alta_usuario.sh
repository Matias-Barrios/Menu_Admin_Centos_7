#!/bin/bash

function alta_usuario() {
    clear

    local nombre_usuario
    local password1
    local password2

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Alta usuario ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    
    printf "Ingrese un ${YELLOW}nombre${NORMAL} de usuario : "
    read nombre_usuario
    printf "\n"

    printf "Ingrese una ${YELLOW}contraseña${NORMAL} : "
    read -s password1
    printf "\n"

    printf "Repita la ${YELLOW}contraseña${NORMAL} : "
    read -s password2
    printf "\n"
    
    if [[ "$password1" != "$password2" ]]
    then   
        echo "Las contraseñas ${RED}no coinciden!! ${NORMAL}" 
        read -s -n 1
        return
    fi

    if [[ "$nombre_usuario" !~ [a-z]{1,10}[_]?[a-z]{0,10} ]]
    then   
        echo "El nombre de usuario ${RED}no tiene un formato correcto!! ${NORMAL}" 
        read -s -n 1
        return
    fi
    printf "\n"
    printf "\n"

    useradd -m -d /home/${nombre_usuario} $nombre_usuario && echo "${GREEN}El usuario ha sido creado correctamente${NORMAL}" || echo "${RED}Algo ha fallado ${NORMAL}" 

    read -s -n 1
    return
    
}

