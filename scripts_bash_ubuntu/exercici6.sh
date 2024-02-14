#!/bin/bash

# Verifica si se proporciona un nombre de directorio como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_del_directorio>"
    exit 1
fi

# Verifica si el directorio existe
if [ ! -d "$1" ]; then
    echo "$1 no es un directorio aprende a escribir!."
    exit 1
fi

echo "EL contingut del directori $1 es:" 
ls "$1"
