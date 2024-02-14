#!/bin/bash

echo "introduce tu nota, (un numero entero entre 0 y 10) "
read nota
#verifica si la nota es menor que 0 o mayor que 0 si no se cumple no esta dentro del rango. 
if [ $nota -lt 0 ] || [ $nota -gt 10 ]; then
	echo "Error: tiene que ser un numero entre 0 y 10."
	 exit 1

fi
#verificar las notas con las condiciones  mayor  o igual  y menor o igual
if [ $nota -ge 0 ] && [ $nota -le 2 ]; then
	echo "Tu nota es (D)"
elif [ $nota -ge 3 ] && [ $nota -le 4 ]; then
	echo "Tu nota es (C-)"
elif [ $nota -ge 5 ] && [ $nota -le 6 ]; then
	echo "Tu nota es (C+)"
elif [ $nota -ge 7 ] && [ $nota -le 8 ]; then	
	echo "Tu nota es (B)"
else 
	echo "Tu nota es (A)"
fi



