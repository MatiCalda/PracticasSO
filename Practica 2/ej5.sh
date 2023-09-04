#!/bin/bash
if [ ! -d $1 ]; then
    echo 'el archivo no es un directorio'
    exit
fi

cantArchivos=0
cantDirectorios=0

for item in $1/*; do
    if [ -f $item ]; then
        ((cantArchivos++))
    fi
    if [ -d $item ]; then
        ((cantDirectorios++))
    fi
done

echo 'cantidad de archivos: '$cantArchivos
echo 'cantidad de directorios: '$cantDirectorios
