#!/bin/bash

# Verificar si el archivo CSV existe
archivo="fitxer.csv"
if [ ! -f "$archivo" ]; then
    echo "El archivo $archivo no existe."
    exit 1
fi

# Iterar sobre cada línea del archivo CSV
while IFS=',' read -r nom_usuari unitat_organitzativa email || [ -n "$nom_usuari" ]; do
    if [ -n "$nom_usuari" ] && [ -n "$unitat_organitzativa" ] && [ -n "$email" ]; then
        echo "Usuari $nom_usuari que pertany a la UO $unitat_organitzativa i correu electrònic $email"
        echo "Usuari $nom_usuari que pertany a la UO $unitat_organitzativa i correu electrònic $email" >> usuaris.txt
    else
        echo "Error: Format de línia incorrecte."
    fi
done < "$archivo"
