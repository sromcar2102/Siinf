#!/bin/bash

secreto=$(($RANDOM % 10 +1))

echo "Introduce un número comprendido entre e 1 y el 10: "
read numero

if [ "$numero" -eq "$secreto" ]; then
    echo "¡Felicidades! ¡Has acertado el número secreto!"
else
    if [ "$numero" -lt "$secreto" ]; then
        echo "Lo siento, el número secreto es mayor, introduce otro:"
    else
        echo "Lo siento, el número secreto es menor, introduce otro:"
    fi

    read numero

    if [ "$numero" -eq "$secreto" ]; then
        echo "¡Felicidades! ¡Has acertado el número secreto!"
    else
        echo "Lo siento, el número secreto era $secreto. Inténtalo de nuevo en otro momento."
    fi
fi

