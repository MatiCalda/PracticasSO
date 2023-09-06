#!/bin/bash

echo 'ingrese el primer numero'
read num1
if [ $(($num1)) != $num1 ]; then
    echo 'debe ingresar un numero'
    exit
fi
echo 'ingrese el segundo numero'
read num2
if [ $(($num2)) != $num2 ]; then
    echo 'debe ingresar un numero'
    exit
fi

echo 'suma: ' $(($num1+$num2))
echo 'resta: ' $(($num1-$num2))
echo 'producto: ' $(($num1*$num2))
echo 'division: ' $(($num1/$num2))