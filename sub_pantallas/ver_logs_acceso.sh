#!/bin/bash

function ver_logs_acceso() {
    clear
    vim -R <( last )
    return
     
}