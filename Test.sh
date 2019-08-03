#!/bin/bash

# Executa o comando e armazena na variavel
sysinfo=`df -h`
sysinfo1=`ls`
#echo "$sysinfo"
echo > teste.txt "$sysinfo"
