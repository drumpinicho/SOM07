#!/bin/sh

# Comprobamos si se nos proporcionan las palabras como cinco argumentos 
if [ "$#" -ne 5 ]; then
    echo "Error: Debes proporcionar cinco palabras como parámetros."
    echo "Uso: $0 <palabra1> <palabra2> <palabra3> <palabra4> <palabra5>"
    exit 1
fi

# Muestra la segunda y quinta palabra
echo "La segunda palabra es: $2"
echo "La quinta palabra es: $5"
