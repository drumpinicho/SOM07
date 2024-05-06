#!/bin/sh

#export LANG="es_ES.UTF-8"
export NEWT_COLORS='window=,white'

# Obtener el número de filas y columnas de la terminal
rows=$(tput lines)
columns=$(tput cols)
posicion=$(( (rows / 2) - 8))
clear
# Función para mostrar el men�
    mostrar_menu() {
    seleccion=$(whiptail --title "MENU DE OPCIONES" --backtitle "Tarea para SOM07" --menu "\nElige una opción:" 15 60 5 \
    "a" "Mostrar contenido de un directorio" \
    "b" "Mostrar fecha y hora del sistema" \
    "c" "Mostrar calendario del mes actual" \
    " " "" \
    "S" "Salir" \
    --defaultno --nocancel 3>&1 1>&2 2>&3 )
}

# Función para mostrar el contenido de un directorio
mostrar_contenido_directorio() {
    ruta=$(whiptail --inputbox "Introduce la ruta absoluta de un directorio:" 10 60 --title "Mostrar contenido de directorio" 3>&1 1>&2 2>&3)
    if [ $? -eq 1 ]; then
         return
    fi
    if [ -d "$ruta" ]; then
        whiptail --title "Contenido de la ruta $ruta" --msgbox --scrolltext "$(ls -ls "$ruta")" 40 100
    else
        whiptail --title "Error" --msgbox "La ruta especificada no es un directorio válido." 10 60
    fi
}

# Función para mostrar la fecha y hora del sistema
mostrar_fecha_hora() {
    whiptail --title "Fecha y hora del sistema" --msgbox "$(date)" 8 35
}

# Función para mostrar el calendario del mes actual
mostrar_calendario() {
#    echo "\n\n\n\n\n"
    tput cup $posicion 0
    cal
    echo "\n\n"
    echo "Pulsa ENTER para volver al menú"
    read ""
	clear

}


# Bucle para mostrar el menú y leer la opción seleccionada
while true; do
    mostrar_menu
    case $seleccion in
        a) mostrar_contenido_directorio ;;
        b) mostrar_fecha_hora ;;
        c) mostrar_calendario ;;
        " ") ;;
        S) exit ;;
        *) whiptail --title "Error" --msgbox "No elegiste ninguna opción válida." 10 60 ;;
    esac
done
