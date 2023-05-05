#!/bin/sh

continuar=1

while [ $continuar -eq 1 ]; do
    echo "Seleccione una opción: "
    echo "1. Crear directorio"
    echo "2. Borrar directorio"
    echo "3. Copiar archivo a directorio"
    echo "4. (o cualquier tecla) Salir"
    read option

    case "$option" in
        1)
            echo "Introduzca el nombre del directorio: "
            read nom
            mkdir $nom
            echo "Listo"
        ;;
        2)
            echo "Introduzca el nombre del directorio que quiera borrar: "
            read borrar
            rm -r $borrar
            echo "Listo"
        ;;
        3)
            echo "Introduzca la ruta del directorio en la que quiera copiar el archivo"
            read ruta
            echo "Introduzca el nombre del archivo que quiera copiar en el directorio"
            read arch
            cp $arch $ruta/$arch
            echo "Listo"
        ;;
        *)
            echo "Adiós"
            continuar=0
        ;;
    esac
done 
