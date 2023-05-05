#!/bin/bash

totalPreguntas=$(wc -l < mazo)

continuar=1

while [ $continuar -eq 1 ]; do
    random=$(( ( RANDOM % totalPreguntas ) + 1 ))

    pregunta=$(sed -n "${random}p" mazo | cut -d ';' -f 1)
    respuesta=$(sed -n "${random}p" mazo | cut -d ';' -f 2)

    read -p "$pregunta " usuario
    if [[ "${usuario,,}" == "${respuesta,,}" ]]; then
        echo "Correcto"
    else
        echo "Incorrecto"
    fi

    read -p "¿Quieres continuar con el juego? (S/N) " resp
    if [[ "${resp,,}" != "s" ]]; then
        echo "Adiós"
        continuar=0
    fi
done



