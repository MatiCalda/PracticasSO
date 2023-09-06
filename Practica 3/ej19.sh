#!/bin/bash

if [ ! -d $1 ]; then
    echo 'debe ingresar un directorio'
    exit
fi

for archivo in $1/*; do
    sed -i 's/^/   /' $archivo
done;