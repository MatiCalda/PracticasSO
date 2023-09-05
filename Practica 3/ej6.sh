#!/bin/bash

if [ ! -d $1]; then
    echo 'debe ingresar un directorio'
    exit
fi

echo 'archivos modificados hace 30 min: '
find $1 -mmin -30
echo 'archivos modificados hace 60 min: '
find $1 -mmin -60
echo 'archivos modificados hace 5 dias: '
find $1 -mtime -5
echo 'archivos modificados hace mas de 10 dias: '
find $1 -mtime +10 -daystart