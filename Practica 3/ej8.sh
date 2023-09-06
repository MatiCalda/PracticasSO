#!/bin/bash

if [ ! -d $1 ]; then
    echo $1' no es un directorio o no existe'
    exit
fi

cantFile=0
cantDir=0

for arch in $1/*; do
    if [ -f $arch ]; then ((cantFile++)); fi
    if [ -d $arch ]; then ((cantDir++)); fi
done

echo 'cantidad de archivos en '$1': '$cantFile
echo 'cantidad de directorios en '$1': '$cantDir