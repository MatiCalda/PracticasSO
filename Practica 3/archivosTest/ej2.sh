#!/bin/bash
clear
echo 'el espacio disponible en el sistema de archivos de raiz es: '
df | awk '{print $4}' | tail -n +2 | head -1

#bash