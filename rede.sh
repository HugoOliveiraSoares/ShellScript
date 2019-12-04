#!/usr/bin/env bash

a="$(ifconfig | grep "inet" | grep "broadcast" | cut -d" " -f10)"
b="$(echo $a | cut -d" " -f2 | cut -d"." -f1-3).0/24"
#c="$(echo $b | cut -d"." -f1-3).0/24"

for ip in $(nmap -sN -p 21,22,80 $b | grep "report for" | cut -d" " -f5); do

  nmap -sS -F -O $ip > temp
  portas="$(cat temp | grep "/tcp" | cut -d"/" -f1 | tr "\n" " ")"
  if [ "$portas" == "" ]; then portas="Nenhuma porta aberta encontrada"; fi

  os="$(cat temp | grep "OS details" | cut -d":" -f2 | cut -d" " -f2-99 | cut -d"," -f1 | grep -v "many fingerprints")"
  if [ "$os" == "" ]; then os="Nenhum OS detectado"; fi

  echo "IP Ativo: $ip | Portas: $portas | Sistema operacional: $os"

done
