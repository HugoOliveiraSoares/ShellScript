#!/bin/bash

# $# --> Numero de argumentos
# $0 --> nome / caminho do script
# S1 - $9 --> argumentos passados
# $* --> Le todos os argumentos
# $? --> errorlevel do ultimo comando

f()
{
	for a in $(seq $*);
	do echo "f($a) = $(seq -s* $a|bc)";
	done;
}
