#!/bin/bash

#-----------------------------
# teste se o parametro foi informado
#-----------------------------

if [ "$1" == "" ];
then
  echo "ERRO de sintaxe, exemplo de uso: $0 site.com "
  exit
else
  read $1
  echo "Escaneando o site $1"
  wget $1
fi
