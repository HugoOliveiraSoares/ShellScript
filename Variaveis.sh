#!/usr/bin/env bash

# Não deve haver espaços na declaração de variavel
x=5
_cidade=bh
nome=hugo

echo "x é igual: $x" # $ para printar o valor da variavel
echo "minha cidade é: $_cidade"
echo "O meu nome é: $nome"
echo "O nome da variavel é: \$nome" # \ para printar o nome da variavel
# Variaveis especiais
# $0 --> nome / caminho do script
echo "O nome do script é $0"
# S1 - $9 --> argumentos passados
# $* --> Le todos os argumentos
echo "1º argumento: $1"
echo "2º argumento: $2"
echo "Todos os argumentos $*"
# $? --> errorlevel do ultimo comando

