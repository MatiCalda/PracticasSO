#!/bin/bash

# Realizar un script que reciba un directorio y cambie la palabra bash por sh a los archivos con permisos
# 755 y su nombre termine en .sh

if [ ! -d $1 ]; then
    echo 'debe ingresar un directorio'
    exit
fi

#sed -i 's/search/replace/' arch
archivos=$( find $1 -perm 755 | find $1 -name '*.sh')

for archivo in $archivos; do
    sed -i 's/bash/sh/' $archivo
done