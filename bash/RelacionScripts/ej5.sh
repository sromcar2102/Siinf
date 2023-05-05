#!/bin/sh
echo "Introduzca el primer operando:"
read op1
echo "Introduzca el segundo operando:"
read op2

echo "La suma es: " $(($op1+$op2))
echo "La resta es: " $(($op1-$op2))
echo "La multiplicacion es: " $(($op1*$op2))
echo "La división es: " $(($op1/$op2))
echo "El módulo es: " $(($op1%$op2))
