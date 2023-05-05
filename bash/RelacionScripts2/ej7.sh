#!/bin/sh

echo "Introduzca el nombre del archivo:"
read nombre
if [ ! -f "$nombre" ]; then
    echo "El archivo no existe."
    exit 1
fi
echo "Introduzca una opción: "
echo "1. Mostrar el contenido."
echo "2. Crear un duplicado."
echo "3. Mover."
echo "4. Copiar."
echo "5. Borrar."
read option

case $option in
    1) 
        cat "$nombre"
    ;;
    2) 
        cp "$nombre" "$nombre"_copia
    ;;
    3) 
        echo "Ingrese la nueva ruta del archivo:"
        read ruta
        mv "$nombre" "$ruta"
    ;;
    4) 
        echo "Ingrese el nombre del archivo de destino:"
        read ruta
        cp "$nombre" "$ruta"
    ;;
    5)
        rm "$nombre"
    ;;
    *) 
        echo "Opción no válida."
    ;;
esac



