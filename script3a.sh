#!/bin/bash

# Función para mostrar menú en pantalla
mostrar_menu() {
    echo "Seleccione una opción:"
    echo "a) Mostrar contenido de un directorio"
    echo "b) Mostrar fecha y hora del sistema"
    echo "c) Mostrar calendario del mes actual"
}

# opcion “a”, pedimos que se introduzca ruta para mostrar el contenido
mostrar_contenido_directorio() {
    read -p "Introduzca la ruta absoluta de un directorio: " ruta_directorio
    ls "$ruta_directorio"
}

# Función para mostrar la fecha y hora del sistema
mostrar_fecha_hora() {
    date
}

# Función para mostrar el calendario 
mostrar_calendario() {
    cal
}

# Mostramos el menú
mostrar_menu

# Leer la opción del usuario
read -p "Seleccione “a”, “b” o “c” y pulse ENTER: " opcion
echo

# Realizar la acción correspondiente según la opción seleccionada
case $opcion in
    a) mostrar_contenido_directorio ;;
    b) mostrar_fecha_hora ;;
    c) mostrar_calendario ;;
    *) echo "No eligió ninguna opción válida" ;;
esac
