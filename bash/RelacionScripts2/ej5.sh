#!/bin/bash
num1=$1
num2=$2
num3=$3

# Ahora hacemos un 'echo' con cada uno de los números separados por un espacio y aplicamos el comando 'sort' con la opción '-n'o '-rn' así:

echo "${num1} ${num2} ${num3}" | tr ' ' '\n' | sort -n | tr '\n' ' '
echo
echo "${num1} ${num2} ${num3}" | tr ' ' '\n' | sort -rn | tr '\n' ' '
echo 

