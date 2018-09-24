#!/bin/bash

function realizar_backup() {
    clear
    fecha_arc=$( date +%d%m%Y%H%s )
    echo "${CYAN}########################################################${NORMAL}"
    echo "${GREEN} Haciendo backup de la base de datos ${NORMAL}"
    echo "${CYAN}########################################################${NORMAL}"
    
    printf "${YELLOW}\b"
    dbexport /backups_db/backup_fecha_arc.bkp && scp -i /claves_ssh/user_backup_id_rsa.pub /backups_db/backup_fecha_arc.bkp backup user_backup@SERVIDOR_ANTEL:/backups_UTU
    printf "${NORMAL}\n"
    printf "\n"
    
    read -s -n 1
    return
    
}

