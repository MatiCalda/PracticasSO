#!/bin/bash

on=1

while [ $on != 0 ];do 
    echo 'Menu'
    echo 'opcion 1: borrar un fichero'
    echo 'opcion 2: visualizar un fichero'
    echo 'opcion 3: copiar un archivo aca'
    echo 'opcion 4: salir'
    read op
    
    if [ $op == 1 ];then
        echo 'ingrese fichero'
        read f
        if [ ! -d $f]; then
            echo 'dato ingresado incorrecto'
        else
            rm -rf $f
        fi 
    fi
    if [ $op == 2 ];then
        echo 'ingrese archivo'
        read f
        if [ ! -f $f ]; then
            echo 'dato ingresado incorrecto'
        else
            cat $f
        fi 
    fi

    if [ $op == 4 ];then on=0; fi
done