#!/bin/bash

tar -xf /documentos/practicas/tp1.gz
grep 'ls' tp1/hist.txt > /documentos/practicas/listado
tar -czf listado.tar.gz /documentos/practicas
rm -rf tp1

#TODO: revisar que lo pega donde se el canta