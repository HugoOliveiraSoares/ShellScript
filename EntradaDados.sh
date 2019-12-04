#!/usr/bin/env bash

# Entrada de dados
echo "Qual o seu nome?"
read nome;
echo "O seu nome é: $nome!"
read -p "Qual a sua idade? " idade #Define uma mensagem antes da leitura
echo $idade
read -s -p "Qual a senha? " senha #Oculta o que sera digitado
echo $senha
read -t 3 -p "De uma opção: " opt #Define um tempo para a resposta
echo $opt
