#!/bin/sh

continuar=1

while [ $continuar -eq 1 ]; do
    echo "CALCULADORA"
    echo "Seleccione una opción: "
    echo "1. SUMA"
    echo "2. RESTA"
    echo "3. DIVISION"
    echo "4. MULTIPLICACION"
    echo "5. (o cualquier tecla) Salir"
    read option

    case "$option" in
        1)

            echo "Introduzca el primer operando:"
            read op1
            echo "Introduzca el segundo operando:"
            read op2
            echo "La suma es: " $(($op1+$op2))
        ;;
        2)
            echo "Introduzca el primer operando:"
            read op1
            echo "Introduzca el segundo operando:"
            read op2
            echo "La resta es: " $(($op1-$op2))
        ;;
        3)
            echo "Introduzca el primer operando:"
            read op1
            echo "Introduzca el segundo operando:"
            read op2
            echo "La división es: " $(($op1/$op2))
        ;;
        4)
            echo "Introduzca el primer operando:"
            read op1
            echo "Introduzca el segundo operando:"
            read op2
            echo "La multiplicación es: " $(($op1*$op2))
        ;;
        *)
            echo "Adiós"
            continuar=0
        ;;
    esac
done 
