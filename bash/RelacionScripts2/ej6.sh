#!/bin/sh
echo "Seleccione una opción:"
echo "a. Pasar de euros a dólares"
echo "b. Pasar de dólares a euros"
read option

case "$option" in
"a")
echo "Introduzca una cantidad en euros: "
read eu
resultado=$(echo "scale=2; $eu * 1.104" | bc)
echo "$resultado dólares"
;;
"b")
echo "Introduzca una cantidad en dólares: "
read dol
resultado=$(echo " $dol* 0.905" | bc)
echo "$resultado euros"
;;
*)
echo "Opción no válida"
;;
esac


