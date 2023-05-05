#!/bin/sh
echo "Seleccione la figura de la que quiere calcular el área:"
echo "1. Cuadrado"
echo "2. Rectángulo"
echo "3. Triángulo"
read option

case "$option" in
        1)
            echo "Introduzca el lado: "
            read lado
            echo "El área del cuadrado es: $(($lado*$lado))"
        ;;
        2)
            echo "Introduzca el ancho: "
            read ancho
            echo "Introduzca el alto: "
            read alto
            echo "El área del rectángulo es: $(($ancho*$alto))"
        ;;
        3)
            echo "Introduzca el ancho: "
            read ancho
            echo "Introduzca el alto: "
            read alto

            area=$(echo "scale=2; ($ancho*$alto)/2" | bc -l )
            echo "El área del triángulo es: $area"
            
        ;;
        *)
            echo "Adiós"
            continuar=0
        ;;
    esac


