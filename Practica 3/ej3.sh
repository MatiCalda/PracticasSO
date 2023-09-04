#!/bin/bash

#ls (archivo) -l | cut -d \  -f 1
#ls (archivo) -l | awk '{print $1}'

for archivo in /documentos/practicas/tp1/*; do
    if [ $archivo -l | cut -d \  -f 1 -eq '-rw--w--w-']; then
        echo $archivo >> perm644
    done
done