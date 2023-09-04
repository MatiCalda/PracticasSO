#!/bin/bash

scripts=$(find /documentos/practicas/tp2 -name '*.sh') 

for script in $scripts; do
    chmod go+x $scrpt
done