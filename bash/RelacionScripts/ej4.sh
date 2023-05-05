#!/bin/bash

echo "Introduce una letra:"
read letra

encontrado=0

for i in {1..12}
do
    mes=$(date -d "$i/01" "+%B")
    if [[ "${mes:0:1}" == "$letra" ]]; then
        encontrado=1
        echo "$mes"
    fi
done

if [[ $encontrado -eq 0 ]]; then
    echo "No hay meses que empiecen por la letra $letra."
fi



