#!/bin/bash

clear
while true; do
  clear
  echo
  echo -e "\t\t\t***AMD.sh 1.0 MENU***"
  echo "
    Opção  Ação
    ===============================================================
    1  -   Scan de site
    2  -   Monitora processos
    3  -   Monitora memoria
    4  -   Sair
    ===============================================================
    Escolha uma das opções acima (0-3): "

    read opcao
    case "$opcao"
      in
      1) ./scan.sh
         sleep 5
      ;;
      2) ./procesos.sh
         sleep 5
      ;;
      3) ./meminfo.sh
         sleep 5
      ;;
      4) echo ""
         echo -e "Saindo...\n"
         exit
      ;;
      *) echo "Somente são validas opções entre 0 e 4"
         sleep 2
      ;;
    esac
done
exit
