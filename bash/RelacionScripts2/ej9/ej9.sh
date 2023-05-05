#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Debe proporcionar el nombre del archivo de agenda y el nombre de la agenda como argumentos."
    exit 1
fi

agenda="$1"
continuar=1

while [ $continuar -eq 1 ]; do
    echo 
    echo "Agenda"
    echo "1. Buscar un nombre en la agenda."
    echo "2. Introducir un nuevo nombre."
    echo "3. Borrar un nombre de la agenda."
    echo "4. Mostrar alfabéticamente el contenido de $agenda."
    echo "5. Salir."
    echo 

    read -p "Elige una opción (1-5): " opcion

    case $opcion in
        1)
            read -p "Introduzca nombre: " nombre
            grep -i "$nombre" "$agenda"
            ;;
        2)
            read -p "Introduzca nombre: " nombre
            read -p "Introduzca dirección: " direccion
            read -p "Introduzca e-mail: " email
            read -p "Introduzca teléfono: " telefono
            echo "$nombre	$direccion	$email	$telefono" >> "$agenda"
            echo "Entrada creada con éxito en el archivo $agenda"
            ;;
        3)
            read -p "Introduzca nombre a borrar: " nombre
            resultado=$(grep -i "$nombre" "$agenda")
            if [ -z "$resultado" ]; then
                echo "El nombre no está en la agenda."
            else
                echo "Entradas encontradas:"
                echo "$resultado"
                read -p "Seleccione entrada: " seleccion
                sed -i "${seleccion}d" "$agenda"
                echo "Entrada borrada con éxito."
            fi
            ;;
        4)
            sort "$agenda"
            ;;
        5)
            echo "Adiós"
            continuar=0
            ;;
        *)
            echo "Opción inválida."
            ;;
    esac
done

