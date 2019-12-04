#! /bin/bash

if [ "$1" == "" ];
then
	echo "Falta argumento, insira um arquivo de texto"
	echo "USO: $0 arquivo.txt"
	exit
fi

tail -n +2 $1 | cut -d" " -f1 | tr -d '"' | sort | nl > output
