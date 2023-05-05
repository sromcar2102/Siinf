#!/bin/sh

echo "Introduzca el precio"
read precio
echo "Introduzca el porcentaje de IVA"
read iva

if [ "$precio" -lt 0 ] || [ "$iva" -lt 0 ]; then
    echo "Los datos introducidos no son válidos"
else 
    # Calculamos el precio final
    precio_final=$(echo "scale=2; $precio * (1 + $iva/100)" | bc -l)
    echo "El precio final es $precio_final"
fi

