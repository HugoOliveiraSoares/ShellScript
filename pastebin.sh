#!/usr/bin/env bash

#ETAPAS
#monitorar o pastebin e obter o link das postagens com algum conteudo especifico
#acessar o pastebin
# extrair ps links das novas postagens
# acessar cada um dos links e obter o conteudo
# exibir o link (ou não) / salvar o link
# nao acessar 2x o link
# diff templinks templinks2 | grep ">" | tr -d ">"

rm templinks templinks2 2>/dev/null >/dev/null
touch templinks
touch templinks2

extrai()
{
  links="$(curl -s "https://pastebin.com/archive" | grep "i_p0" | cut -d"=" -f5 | cut -d'"' -f2 | tr -d "/")"
  sleep 2
    for l in $links; do
      r="$(grep "$l" templinks)"
      if [ "$r" == "" ]; then echo $l >> templinks; fi
    done
}

acessa()
{
  for r in $1; do
    echo "$r" >> templinks2
    r2="$(curl -s "https://pastebin.com/raw/$r" | grep "$2")";
    if [ "$r2" != "" ]; then echo "https://pastebin.com/raw/$r"; fi;
    sleep 2
  done
}

[ "$1" == "" ] && { clear;echo "[+] Uso: $0 \"string\""; exit; }
clear
echo "monitorando \"$1\" em pastebin.com"
echo
while :; do
  extrai
  links="$(diff templinks templinks2 | cut -d" " -f2 | grep -v ",")"
  acessa "$links" "$1"
  sleep 3
done
