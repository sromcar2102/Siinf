#!/bin/bash

#Metodos

menu() {
    clear
    echo "1. "
    echo "2. "
    echo "3. Salir"
}

incluir_producto(){
    echo "Introduzca la referencia:"
    read ref

    # Comprobar si ya existe un producto con esa referencia
    if grep -q "^$ref;" archivo.txt; then
        echo "Ya existe un producto con la referencia $ref"
    else
        echo "Introduzca el nombre del producto:"
        read nom
        echo "Introduzca el precio del producto:"   
        read precio
        echo "$ref;$nom;$precio" >> "archivo.txt"
        echo "Entrada creada con éxito en el archivo archivo.txt"
    fi

}

#bucle

while true; do
    menu
    echo "Introduzca una opción:"
    read option
    case $option in 
        1)
            echo "Funciona 1"
        ;;
        2)
            echo "Funciona 2"
            incluir_producto
        ;;
        3)
            echo "Adiós"
            break
        ;;
        *)
            echo "Opción no válida"
        ;;

    esac
    echo "Presiona enter para continuar"
    read
done
