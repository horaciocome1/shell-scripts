#!/bin/bash

#Limpar o cache da memoria RAM

if [ "$(id -u)" != "0" ]; then
    echo
    echo "Execute o comando como root!"
    sleep 1
    echo
    exit
else
    MEM1=`free|awk '/Mem:/ {print int(100*$3/$2)}'`
    free -m
    echo "**************************************************************************"
    echo "Uso de memória RAM antes de fazer a limpeza:" $MEM1%
    echo "**************************************************************************"
    echo " "
    echo "Limpando a memória RAM..."
    sleep 3
    sync
    echo 2 > /proc/sys/vm/drop_caches
    echo "Limpando a memória Swap..."
    sleep 3
    swapoff -a
    swapon /dev/sda2
    echo "**************************************************************************"
    MEM2=`free|awk '/Mem:/ {print int(100*$3/$2)}'`
    free -m
    echo "**************************************************************************"
    echo "Uso de memória RAM após a limpeza:" $MEM2% "Economia de: " `expr $MEM1 
-      $MEM2`"%"
    echo "**************************************************************************"
    sleep 1
    exit
fi 
