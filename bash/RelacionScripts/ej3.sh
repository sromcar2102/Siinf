#!/bin/sh
echo "Introduzca su edad:"
read edad

if [ $edad -lt 10 ]; then
    echo "Eres muy joven"
elif [ $edad -ge 10 ] && [ $edad -le 30 ]; then
    echo "Que mala edad tienes"
elif [ $edad -gt 30 ]; then
    echo "Que bien te veo"
fi  

