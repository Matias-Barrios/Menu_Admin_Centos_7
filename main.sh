#!/bin/bash

## Hacer "source" a las dependencias

source functions/colors.def 
source functions/nombres_servicios.def 
source sub_pantallas/Ver_estado_de_los_servicios.sh 
source sub_pantallas/parar_o_deshabilitar_un_servicio.sh
source sub_pantallas/iniciar_o_habilitar_un_servicio.sh
source sub_pantallas/ver_logs_acceso.sh
source sub_pantallas/monitoreo_de_recursos.sh
source sub_pantallas/alta_usuario.sh
source sub_pantallas/alta_grupo.sh
source sub_pantallas/baja_usuario.sh
source sub_pantallas/baja_grupo.sh
source sub_pantallas/informix_ver.sh
source sub_pantallas/informix_parar.sh
source sub_pantallas/informix_iniciar.sh
source sub_pantallas/realizar_backup.sh

## Definicion de pantallas

function Main_menu() {
    clear

    echo "${MAGENTA}########################################################${NORMAL}"
    echo "${GREEN} Bienvenido a Centos 7 ${NORMAL}"
    printf "${CYAN} \t \t ¿Que desea hacer? ${NORMAL}\n"
    echo "${MAGENTA}########################################################${NORMAL}"
    echo "${YELLOW} 1 - ${NORMAL} Administracion de cuentas de usuario y grupos"
    echo "${YELLOW} 2 - ${NORMAL} Administracion de Informix DBMS"
    echo "${YELLOW} 3 - ${NORMAL} Monitoreo de Recursos"
    echo "${YELLOW} 4 - ${NORMAL} Monitoreo de acceso al servidor"
    echo "${YELLOW} 5 - ${NORMAL} Servicios"
    echo "${YELLOW} 6 - ${NORMAL} Realizar backup ahora"
    echo "${YELLOW} q - ${NORMAL} SALIR"
    read -s -n 1 option
    case $option in
        1) 
            Administracion_de_cuentas_de_usuario
            Main_menu
            ;;
        2) 
            Administracion_de_Informix_DBMS
            Main_menu
            ;;
        3) 
            Monitoreo_de_Recuros
            Main_menu
            ;;
        4) 
            Monitoreo_de_acceso_al_servidor
            Main_menu
            ;;
        5) 
            Servicios
            Main_menu
            ;;
        6) 
            realizar_backup
            Main_menu
            ;;
        'q')
            clear
            exit 0
            ;;
        *)
            Main_menu
        ;;
    esac
}

function Servicios() {
    clear

    echo "${MAGENTA}########################################################${NORMAL}"
    echo "${GREEN} Servicios ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    echo "${YELLOW} 1 - ${NORMAL} Ver estado de los servicios"
    echo "${YELLOW} 2 - ${NORMAL} Parar o deshabilitar un servicio"
    echo "${YELLOW} 3 - ${NORMAL} Iniciar o habilitar un servicio"
    echo "${YELLOW} q - ${NORMAL} SALIR"
    read -s -n 1 option
    case $option in
        1)
            Ver_estado_de_los_servicios
            Servicios
            ;;
        2)
            parar_o_deshabilitar_un_servicio
            Servicios
            ;;
        3)
            iniciar_o_habilitar_un_servicio
            Servicios
            ;;
        'q')
            Main_menu
            ;;
        *)
            Servicios
        ;;
    esac
    
}


function Monitoreo_de_acceso_al_servidor() {
    clear

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Monitoreo de acceso al servidor ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    echo "${YELLOW} 1 - ${NORMAL} Ver logs de acceso"
    echo "${YELLOW} q - ${NORMAL} SALIR"
    read -s -n 1 option
    case $option in
        1)
            ver_logs_acceso
            Monitoreo_de_acceso_al_servidor
            ;;
        'q')
            Main_menu
            ;;
        *)
            Monitoreo_de_acceso_al_servidor
        ;;
    esac
    
}

function Monitoreo_de_Recuros() {
    clear

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Monitoreo de Recuros ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    echo "${YELLOW} 1 - ${NORMAL} Ver status de recursos del servidor"
    echo "${YELLOW} q - ${NORMAL} SALIR"
    read -s -n 1 option
    case $option in
        1)
            monitoreo_de_recursos
            Main_menu
            ;;
        'q')
            Main_menu
            ;;
        *)
            Monitoreo_de_Recuros
        ;;
    esac
    
}

function Administracion_de_Informix_DBMS() {
    clear

    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Administracion de Informix DBMS ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    echo "${YELLOW} 1 - ${NORMAL} Ver status"
    echo "${YELLOW} 2 - ${NORMAL} Parar"
    echo "${YELLOW} 3 - ${NORMAL} Iniciar"
    echo "${YELLOW} 5 - ${NORMAL} Realizar respaldo AHORA"
    echo "${YELLOW} q - ${NORMAL} SALIR"
    read -s -n 1 option
    case $option in
        1)
            informix_ver
            Administracion_de_Informix_DBMS
            ;;
        2)
            informix_parar
            Administracion_de_Informix_DBMS
            ;;
        3)
            informix_iniciar
            Administracion_de_Informix_DBMS
            ;;
        'q')
            Main_menu
            ;;
        *)
            Administracion_de_Informix_DBMS
        ;;
    esac
    
}

function Administracion_de_cuentas_de_usuario() {
    clear
    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Administracion de cuentas de usuario y grupos ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    echo "${YELLOW} 1 - ${NORMAL} Alta Usuario"
    echo "${YELLOW} 2 - ${NORMAL} Alta Grupo"
    echo "${YELLOW} 3 - ${NORMAL} Baja Usuario"
    echo "${YELLOW} 4 - ${NORMAL} Baja Grupo"
    echo "${YELLOW} q - ${NORMAL} SALIR"
    read -s -n 1 option
    case $option in
        1)
            alta_usuario
            Administracion_de_cuentas_de_usuario
            ;;
        2)
            alta_grupo
            Administracion_de_cuentas_de_usuario
            ;;
        3)
            baja_usuario
            Administracion_de_cuentas_de_usuario
            ;;
        3)
            baja_grupo
            Administracion_de_cuentas_de_usuario
            ;;
        'q')
            Main_menu
            ;;
        *)
            Administracion_de_cuentas_de_usuario
        ;;
    esac
    
}

## Ejecutar!
Main_menu
