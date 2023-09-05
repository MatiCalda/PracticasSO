#!/bin/bash

# Realizar un script que reciba un directorio como parametro copie a un directorio llamado nuevo, todos
# los archivos que contengan en su interior la palabra bash

mkdir nuevo
if [ ! -d $1 ]; then
    echo 'debe ingresar un directorio'
    exit
fi

for archivo in $1/*; do
    num=$(grep -c 'bash' $archivo)
    if [ $num -gt 0 ]; then
        cp $archivo nuevo
    fi
done
