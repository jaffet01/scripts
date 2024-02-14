#!/bin/bash

# Verificar el número correcto de argumentos
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directorio_a_copiar> <directorio_destino>"
    exit 1
fi

directorio_a_copiar="$1"
directorio_destino="$2"

# Verificar si el directorio a copiar existe
if [ ! -d "$directorio_a_copiar" ]; then
    echo "Error: El directorio a copiar '$directorio_a_copiar' no existe."
    exit 1
fi

# Obtener la fecha actual en el formato YYYYMMDD
fecha_actual=$(date +%Y%m%d)

# Construir el nombre del archivo de copia de seguridad
nombre_backup="backup_$(basename "$directorio_a_copiar")_$fecha_actual.tar.gz"

# Verificar si ya existe un archivo de copia de seguridad con el mismo nombre
if [ -e "$directorio_destino/$nombre_backup" ]; then
    echo "Error: Ya existe un archivo de copia de seguridad con el nombre '$nombre_backup'."
    exit 2
fi

# Crear la copia de seguridad con tar y comprimir el contenido
tar -czf "$directorio_destino/$nombre_backup" "$directorio_a_copiar"

# Verificar si la operación fue exitosa
if [ $? -eq 0 ]; then
    echo "Copia de seguridad exitosa: '$nombre_backup' se ha guardado en '$directorio_destino'."
else
    echo "Error al crear la copia de seguridad."
fi
