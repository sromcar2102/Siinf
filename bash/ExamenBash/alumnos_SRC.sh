#!/bin/bash

while true; do

    clear
    echo "-----------------------------------------"
    echo "LISTADO DE ALUMNOS:"
    echo "-----------------------------------------"
    echo "1. INCLUIR ALUMNO."
    echo "2. INCLUIR CALIFICACIONES."
    echo "3. VISUALIZAR ALUMNO."
    echo "4. CALCULAR NOTA."
    echo "5. ELIMINAR ALUMNO."
    echo "6. SALIR."
    echo "Introduzca una opción:"
    read option
    
    case $option in
    1)
        echo "Introduce el DNI:"
        read dni

        #Comprobamos que no haya un alumno con el mismo dni
        resultado=$( grep -i "^$dni" alumnos.txt ) 
        if [ -z "$resultado" ]; then
            echo "Introduce el nombre:"
            read nom
            echo "Introduce los apellidos:"
            read apell

            echo "$dni;$nom;$apell" >> alumnos.txt
            echo "Alumno añadido correctamente"
        else
            echo "Ya existe un alumno con ese DNI"
        fi
    ;;
    2)
        #Buscamos al alumno
        echo "Introduzca el dni del alumno:"
        read dni

        resultado=$( grep -i "^$dni" alumnos.txt ) 
        if [ -z "$resultado" ]; then
            echo "No hay ningún alumno con ese DNI"
        else
            #Significa que hay un alumno con ese dni, por lo que:     
            #Añadimos sus notas
            echo "Nota de la Actividad1:"
            read act1

            echo "Nota de la Actividad2:"
            read act2

            echo "Nota de la Práctica1:"
            read pra1

            echo "Nota de la Práctica2:"
            read pra2

            echo "Nota del examen:"
            read examen
            
            #Para añadirlas, voy a almacenar la linea en una variable, borro la linea del alumno sin las notas y
            #añado la linea de la informacion con las notas.            
            calif="$resultado;$act1;$act2;$pra1;$pra2;$examen"
            sed -i "/$dni/d" alumnos.txt
            echo $calif >> alumnos.txt
        fi
    ;;
    3)
        echo "Introduzca el dni del alumno:"
        read dni

        resultado=$( grep -i "^$dni" alumnos.txt ) 
        if [ -z "$resultado" ]; then
            echo "No hay ningún alumno con ese DNI"
        else
            dni=$(grep "^$dni" alumnos.txt | cut -d";" -f1)
            nombre=$(grep "^$dni" alumnos.txt | cut -d";" -f2)
            apellidos=$(grep "^$dni" alumnos.txt | cut -d";" -f3)
            act1=$(grep "^$dni" alumnos.txt | cut -d";" -f4)
            
            echo "DNI: $dni"
            echo "NOMBRE: $nombre"
            echo "APELLIDOS: $apellidos"

            #Ahora vamos a comprobar si tiene calificaciones
            if [ -z "$act1" ]; then
                echo "SIN CALIFICACIONES"
            else
                act2=$(grep "^$dni" alumnos.txt | cut -d";" -f5)
                pra1=$(grep "^$dni" alumnos.txt | cut -d";" -f6)
                pra2=$(grep "^$dni" alumnos.txt | cut -d";" -f7)
                exam=$(grep "^$dni" alumnos.txt | cut -d";" -f8)

                echo "ACT1: $act1"
                echo "ACT2: $act2"
                echo "PRA1: $pra1"
                echo "PRA2: $pra2"
                echo "EXAMEN: $exam"
            fi
        fi
    ;;
    4)
        echo "No me ha dado tiempo."
    ;;
    5)
        echo "Introduzca el DNI del alumno que desee borrar:"
        read borrar
        resultado=$( grep -i "^$borrar" alumnos.txt )
        if [ -z "$resultado" ]; then
            echo "No hay ningun alumno con ese DNI."
        else
            sed -i "/$borrar/d" alumnos.txt 
            echo "Alumno borrado con éxito."
        fi
    ;;
    6)
        echo "Adiós"
        break
    ;;
    *)
        echo "Opción no válida"
    esac
    echo "Pulse enter para continuar"
    read
done





































