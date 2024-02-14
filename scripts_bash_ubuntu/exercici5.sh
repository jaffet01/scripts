#!/bin/bash

# Comprova si s'ha proporcionat un argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file_name>"
    exit 1
fi

# Comprova si el fitxer existeix
if [ ! -e "$1" ]; then
    echo "El fitxer $1 no existeix."
    exit 1
fi

# Comprova si és un fitxer regular
if [ -f "$1" ]; then
    echo "El fitxer $1 és un fitxer regular."
else
    echo "El fitxer $1 no és un fitxer regular."
fi
