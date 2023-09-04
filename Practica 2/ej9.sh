#!/bin/bash

if [ ! -f $1 ]; then
        echo 'debe ingresar un archivo'
        exit
fi

while IFS= read -r line; do echo $line; done < $1
