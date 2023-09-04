#!/bin/bash

#stat $1 | tail -3 | head -1 | cut -d ' ' -f 2
if [ ! -d $1 ]; then
    echo 'debe ingresar un directorio'
    exit
fi

for archivo in $1/*; do
    fecha=$(stat $archivo | tail -3 | head -1 | cut -d ' ' -f 2)
    echo $fecha
done

#test
