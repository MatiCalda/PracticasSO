#!/bin/bash

#stat $1 | tail -3 | head -1 | cut -d ' ' -f 2
if [ ! -d $1 ]; then
    echo 'debe ingresar un directorio'
    exit
fi

echo 'ingrese un mes: '
read mes

for archivo in $1/*; do
    mesModArchivo=$(stat $archivo | tail -3 | head -1 | cut -d ' ' -f 2 | cut -d '-' -f 2)
    # uso un solo igual porque estoy hablando de un string, si fuera integer, seria con '=='
    if [ $mes = $mesModArchivo ];then
        echo 'el archivo' $archivo 'fue modificado en este mes'
    fi
done


