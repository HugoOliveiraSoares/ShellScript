#!/usr/bin/env bash
# Comnado elif

echo "Selecione uma opção:"
echo "1: Data e hora do sistema."
echo "2: Exibir o resultado da divisão 10/2."
echo "3: Exibir uma mensagem."
read op;

if [ $op == 1 ];
then
  data=$(date +"%T, %d/%m/%y, %A")
  echo "$data"

elif [ $op == 2 ];
then
  resultado=$((10/2))
  echo "Divisão de 10/2 é = $resultado"

elif [ $op == 3 ];
then
  echo "Informe seu nome:"
  read nome;
  echo "Bem-vindo ao mundo do shell script, $nome!"

fi
