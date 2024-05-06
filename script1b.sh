#!/bin/sh

#Diversos efectos para el texto en código ANSI
NC='\033[0m'         # sin color. Texto normal
RED='\033[0;31m'     # rojo
GREEN='\033[0;32m'   # verde
BLUE='\033[0;34m'    # azul
BOLD='\033[1m'       # negrita
SUB='\033[4m'        # subrayado
BLINK='\033[5m'      # parpadeo
CENTER='\033[18C'    # avanza el cursor 18 columnas (para centrar el texto)
CENTER2='\033[10C'   # avanza el cursor 10 columnas (para centrar el texto)

clear
# Compruebo que se han introducido parámetros
if [ $# -ne 1 ]; then
    echo "${RED}${CENTER}${BLINK}###ERROR###\n${CENTER2}${NC}${BLUE}Debes especificar una ruta${NC}\n\n Utiliza${BOLD} $0 “/ruta/del/archivo”${NC}\n\n\n\n"
    exit 1
fi

RUTA=$1

# Compruebo que la ruta existe para luego verificar si es un archivo o un directorio
if [ -e "$RUTA" ]; then
        if [ -f  "$RUTA" ]; then
        echo  "\n\n${CENTER2}El archivo ${BOLD}$RUTA${GREEN}${BLINK} existe.${NC}\n\n\n"
        elif [ -d "$RUTA" ]; then
        echo  "\n\n${CENTER2}La ruta ${BOLD}$RUTA${GREEN}${BLINK} es un directorio.${NC}\n\n\n"
   fi
else
    echo  "\n\n${CENTER2}El archivo ${BOLD}$RUTA${RED}${BLINK} no existe.${NC}\n\n\n"
fi

