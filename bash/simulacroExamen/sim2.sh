#!/bin/bash

#Variable continuar a modo de "interruptor" para seguir o salir

continuar=1

#Bucle con el menú

while [ $continuar -eq 1 ]; do
    echo "-------------------------"
    echo "Listado de productos:"
    echo "1. Incluir producto."
    echo "2. Visualizar producto."
    echo "3. Eliminar un producto."
    echo "4. Borrar el contenido"
    echo "5. Salir"
    echo "Introduzca una opción:"
    read option
    echo "-------------------------"
    
    #El clear aqui para borrar el menu al elegir opción pero que se vea lo que hemos hecho
#Se puede usar sleep para que se muestre y luegi borrarlo
    clear

    case $option in
        1)
            #Primero pedimos los datos y luego lo volcamos en un archivo creandelo si no
            #existe o sobreescribiendolo si si existe.
            echo "Introduzca la referencia:"
            read ref
            echo "Introduzca el nombre del producto:"
            read nom
            echo "Introduzca el precio del producto:"   
            read precio
            echo "$ref;$nom;$precio" >> "archivo.txt"
            echo "Entrada creada con éxito en el archivo archivo.txt"
        ;;
        2)
            echo "Introduzca la referencia del producto que desee visualizar:"
            read buscar
            resultado=$( grep -i $buscar archivo.txt ) 
            if [ -z "$resultado" ]; then
                echo "No hay ningún producto con esa referencia"
            else
                echo "$resultado"
            fi
        ;;
        3)
            echo "Introduzca la referencia del producto que desee borrar:"
            read borrar
            resultado=$( grep -i $borrar archivo.txt )
             if [ -z "$resultado" ]; then
                echo "No hay ningun producto con esa referencia."
             else
                sed -i "${borrar}d" "archivo.txt"
                echo "Producto borrado con éxito."
             fi
        ;;
        4)
            rm archivo.txt
            echo "Se ha borrado el archivo archivo.txt"
        ;;
        5)
            #Opción para salir al "apagar" el "interruptor"
            echo "Adiós"
            continuar=0
        ;;
        *)
            echo "Opción no válida"
        ;;

    esac
done 

