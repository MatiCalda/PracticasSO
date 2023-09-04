#!/bin/bash

if [ ! -f $1 ]; then
        echo $1 'no es un archivo'
        exit
fi
if [ ! -f $2 ]; then
        echo $2 'no es un archivo'
        exit
fi
lineasA=$( cat $1 | wc -l)
lineasB=$( cat $2 | wc -l)
if [ $lineasA -gt $lineasB ]; then
        echo $1 'tiene mas lineas que '$2
        exit
fi
if [ $lineasA -eq $lineasB ]; then
        echo 'ambos archivos tienen la misma cantidad de lineas'
        exit
fi
if [ $lineasA -lt $lineasB ]; then
        echo $1 'tiene menos lineas que '$2
        exit
fi
echo 'no llegue a nada'
