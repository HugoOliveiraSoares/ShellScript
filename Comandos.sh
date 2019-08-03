#!/usr/bin/env bash

# Executa o comando e armazena na variavel
sysinfo=`df -h`
echo "$sysinfo"
#echo > teste.txt "$sysinfo" # Salva a saida do comando dentro de um aquivo
