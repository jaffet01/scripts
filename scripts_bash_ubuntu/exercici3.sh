
#!/bin/bash

# Verificar si se proporcionaron tres parámetros
if [ $# -ne 3 ]; then
    echo "Error: Se esperaban exactamente tres parámetros."
    exit 1
fi

# Asignar parámetros a variables
blau=$1
verd=$2
vermell=$3

# Imprimir la salida
echo "Valor del primer paràmetre de l’script: $blau"
echo "Valor del segon paràmetre de l’script: $verd"
echo "Valor del tercer paràmetre de l’script: $vermell"
