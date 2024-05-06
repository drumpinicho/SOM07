#!/bin/sh

# Comprobamos si se han introducido parámetros
if [ $# -ne 1 ]; then
    echo "Por favor, especifica la ruta del archivo.\n\nUsa: $0 /ruta/del/archivo"
    exit 1
fi

# Verificamos si el archivo existe
if [ -f "$1" ]; then
    echo "El archivo $1 existe."
else
    echo "El archivo $1 no existe."
fi
