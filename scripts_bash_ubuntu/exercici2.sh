#!/bin/bash

# Solicitar al usuario la ruta completa del archivo que desea mover
read -p "Por favor, introduce la ruta completa del archivo que deseas mover: " ruta_archivo

# Con esta linea verificamos que el archivo existe esto lo hacemos utilizando la condicional [-f] que verifica
# que el archivo especificado por la variable $ruta_archivo existe y es un archivo regular 
#(no un directorio u otro tipo de archivo especial).

if [ -f "$ruta_archivo" ]; then
    # Obtener el nombre del archivo
    nombre_archivo=$(basename "$ruta_archivo")

    # Crear el directorio ~/scripts si no existe
    mkdir -p ~/scripts

    # Mover el archivo al directorio ~/scripts
    mv "$ruta_archivo" ~/scripts/
    
    # Agregar ~/scripts al contenido de la variable PATH
    export PATH="$PATH:~/scripts"

    # Mostrar mensaje de \u00e9xito
    echo "El archivo \"$nombre_archivo\" ha sido movido al directorio ~/scripts."
else
    echo "El archivo \"$ruta_archivo\" no existe o no es un archivo regular."
fi
