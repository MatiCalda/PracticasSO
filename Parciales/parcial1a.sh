#!/bin/bash
# realizar un script que reciba dos archivos como parametros y muestre por pantalla el nombre del mayor tamaño
# si son iguales que imprima: 'son iguales'

if [ ! -f $1 ]; then
    echo 'ingrese un archivo'
    exit
fi
if [ ! -f $2 ]; then
    echo 'ingrese un archivo'
    exit
fi

tamA=$(ls $1 -s | awk '{print $1}')
tamB=$(ls $2 -s | awk '{print $1}')

if [ $tamA -gt $tamB ]; then
    echo $1 ' es mas grande'
    exit
fi
if [ $tamA -lt $tamB ]; then
    echo $2 ' es mas grande'
    exit
fi
if [ $tamA -eq $tamB ]; then
    echo 'los archivos tienen mismo tamaño'
fi