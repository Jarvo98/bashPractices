#!/bin/bash

print() {
    printf $1
    exit 0
}

error() {
    echo "El único parámetro de entrada debe ser 1 ó 2"
    exit 1
}

if [ -n $1 ]; then
    if [ $1 -eq 1 ]; then
        print "A\nB\n"
    elif [ $1 -eq 2 ]; then
        print "C\nD\n"
    else
        error
    fi
else
    error
fi