#!/usr/bin/env bash


# Tomada de decisão
# Parametros mais comuns:
# n string1: o comprimento de string1 é diferente de 0;
# z string1: o comprimento de string1 é zero;
# string1 = string2: string1 e string2 são idênticas;
# string1 != string2: string1 e string2 são diferentes;
# inteiro1 -eq inteiro2: inteiro1 possui o mesmo valor que inteiro2;
# inteiro1 -ne inteiro2: inteiro1 não possui o mesmo valor que inteiro2;
# inteiro1 -gt inteiro2: inteiro1 é maior que inteiro2;
# inteiro1 -ge inteiro2: inteiro1 é maior ou igual a inteiro2;
# inteiro1 -lt inteiro2: inteiro1 é menor que inteiro2;
# inteiro1 -le inteiro2: inteiro1 é menor ou igual a inteiro2;
# e nome_do_arquivo: verifica se nome_do_arquivo existe;
# d nome_do_arquivo: verifica se nome_do_arquivo é um diretório;
# f nome_do_arquivo: verifica se nome_do_arquivo é um arquivo regular (texto, imagem, programa, docs, planilhas).

echo "Digite um número:"
read numero;

if [ "$numero" -gt 20 ];
then
	echo "Este número é maior que 20!"
else
	echo "Este número não é maior que 20!"
fi

echo "--------------------------------------------------------------------"
# Verifica se um número é positivo ou negativo

echo "Digite um número:"
read num;
if [ "$num" -ge 0 ];
then
	echo "O número $num é positivo!"
else
	echo "O número $num é negativo!"
fi
