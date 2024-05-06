#!/bin/sh
NC='\033[0m'         # sin color
RED='\033[0;31m'     # rojo
BLUE='\033[0;34m'    # azul
BLINK='\033[5m'      # parpadeo
CENTER='\033[18C'    # avanza el cursor 18 columnas (para centrar el texto)
CENTER2='\033[10C'   # avanza el cursor 10 columnas (para centrar el texto)

clear
# Miramos si el número de palabras introducidas no es igual a 5
if [ "$#" -ne 5 ]; then
    if [ "$#" -lt 5 ]; then
        echo "\n${RED}${BLINK}$(figlet -f standard " # Error # ")\n\n${NC}${CENTER2}Debes proporcionar cinco palabras como parámetros."
        echo "\n${CENTER2}${BLUE}Faltan $(expr 5 - $#) palabra(s).${NC}"
    else
        echo "\n${RED}${BLINK}$(figlet -f standard " # Error # ")\n\n${NC}${CENTER2}Has proporcionado más de cinco palabras como parámetros."
        echo "\n${CENTER2}${BLUE}Sobran $(expr $# - 5) palabra(s).${NC}"
    fi
    echo "\n${CENTER2}Uso: $0 <palabra1> <palabra2> <palabra3> <palabra4> <palabra5>\n"
    exit 1
fi

# Muestra la segunda y quinta palabra
echo "\n\n${CENTER2}La segunda palabra es:\n\n${RED}$(figlet -f standard "$2")${NC}"
echo "\n\n${CENTER2}La quinta palabra es:\n\n${RED}$(figlet -f standard "$5")${NC}"
