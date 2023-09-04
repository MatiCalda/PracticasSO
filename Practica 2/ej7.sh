#!/bin/bash

textos=$(find /documentos/practicas/tp1 -name '*.txt')

for texto in $textos; do
        chmod o+w $texto
done
