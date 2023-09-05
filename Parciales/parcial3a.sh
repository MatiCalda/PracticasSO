#!/bin/bash

# Recibe un archivo por parametro y si tiene mas de 4 lineas, cambia la palabra bash por linux
# en las primeras 4 lineas

if [ ! -f $1 ]; then
    echo 'debe ingresar un archivo'
    exit
fi

tamA=$(cat $1 | wc -l)

if [ $tamA -gt 4 ]; then
    sed -i '1,4 s/bash/linux/' $1
fi