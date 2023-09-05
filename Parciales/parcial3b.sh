#!/bin/bash

# Recibo un directorio y guardo en un archivo llamano pto2 los nombres de los archivos que tienen
# permisos de ejecucion para el grupo y fueron modificados en los ultimos 2 dias
# tener en cuenta los subdirectores

if [ ! -d $1 ]; then
    echo 'debe ingresar un directorio'
    exit
fi

find $1 -perm /g=x -mtime -2 >> pto2

