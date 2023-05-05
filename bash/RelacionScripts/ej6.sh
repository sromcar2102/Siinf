#!/bin/sh

echo "¿Quién descubrió América?:"
read resp

case "$resp" in
    [Cc]olon)
        echo "Es correcto"
        ;;
    *)
        echo "Es incorrecto"
        ;;
esac

