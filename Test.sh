#!/bin/bash

# Executa o comando e armazena na variavel
sysinfo=`df -h`
sysinfo1=`ls`
#echo "$sysinfo"
echo -e > teste.txt "$sysinfo\n\n$sysinfo1"
