#!/bin/bash

if [ ! -d $1 ]; then
    echo 'debe ingresar un directorio'
fi

find $1 -name 'a*' >> ej3Files/name
find $1 -name '*.txt' >> ej3Files/extend
find $1 -perm 644 >> ej3Files/perm
find $1 -size +1k >> ej3Files/tam

