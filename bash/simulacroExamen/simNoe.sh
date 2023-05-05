#!/bin/bash
productos="productos.txt"

menu() {
    clear
    echo "LISTADO DE PRODUCTOS:"
    echo "1. INCLUIR PRODUCTO"
    echo "2. VISUALIZAR PRODUCTO"
    echo "3. ELIMINAR UN PRODUCTO"
    echo "4. BORRAR EL CONTENIDO"
    echo "5. SALIR"
}

# incluir un producto
incluye_producto() {
    echo "Introduce la referencia:"
    read referencia
    echo "Introduce el nombre:"
    read nombre
    echo "Introduce el precio:"
    read precio
#inluyo en el archivo productos:
    echo "$referencia:$nombre:$precio" >> $productos
    echo "Producto añadido"
}

#visualizar un productos
visualiza_productos() {
   echo "Introduzca la referencia del producto que desee visualizar:"
            read buscar
            resultado=$( grep -i $buscar productos.txt ) 
            if [ -z "$resultado" ]; then
                echo "No hay ningún producto con esa referencia"
            else
                echo "$resultado"
            fi
}

#visualizar todos los productos
visualiza_todos() {
    echo "Productos:"
    echo " "
    cat $productos

}

#eliminar un producto
elimina_producto() {
    echo "Introduzca la referencia del producto que desee borrar:"
            read borrar
            resultado=$( grep -i $borrar productos.txt )
             if [ -z "$resultado" ]; then
                echo "No hay ningun producto con esa referencia."
             else
                sed -i "/$borrar/d" productos.txt 
                echo "Producto borrado con éxito."
             fi
}

#borrar todo el contenido del archivo
borra_contenido() {
    echo "¿Estás seguro de que quieres borrar todo el contenido? (Contesta si o no)"
    read confirmacion
    if [ "$confirmacion" == "si" ]; then
        rm productos.txt
        echo "Contenido borrado"
    else
        echo "Operación cancelada"
    fi
}

while true
do
    menu
    echo "Introduce la opción a realizar:"
    read opcion
    case $opcion in
        1) incluye_producto;;
        2) visualiza_productos;;
        3) elimina_producto;;
        4) borra_contenido;;
        5) echo "Saliendo.."; break;;
        *) echo "Opción no válida";;
    esac
    echo "Presiona enter para continuar"
    read
done
