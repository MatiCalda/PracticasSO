#!/bin/bash

# Realizar un script que reciba un archivo como parametro, si dicho archivo tiene mas de 10 lineas, que 
# lo empaquete y lo comprima, y si tiene menos de 10 lineas, informar los numeros de linea 
# donde se encuentra la palabra 'script'

if [ ! -f $1 ]; then
    echo 'ingresar un archivo'
    exit
fi

cantLineas=$(cat $1 | wc -l)
if [ $cantLineas -gt 10 ]; then
    tar -cf archivo.tar $1
    gzip archivo.tar
fi 
if [ $cantLineas -lt 10 ]; then
    grep -n 'script' $1 | cut -d ':' -f 1
    #grep -n 'script' $1 | awk -F ':' '{print $1}'
fi 
