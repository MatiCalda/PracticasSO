#!/bin/bash
#copio el archivo usuarios y lo pego en mi ubicacion actual de ejecucion
cp /documentos/practicas/tp1/usuarios .

echo $1':x:uid:guid :/home/'$1':/bin/bash' >> usuarios
