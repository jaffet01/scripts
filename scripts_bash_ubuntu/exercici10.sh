#!/bin/bash
read -p "porfavor introduce la ruta de la carpeta" ruta_carpeta

if [ ! -d "$ruta_carpeta" ]; then
	echo "La carpeta no existe"
else 
	cd "$ruta_carpeta" || exit
	ls
	du
fi
