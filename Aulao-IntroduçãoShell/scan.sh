#!/bin/bash

echo -n "Informe um host ou ip: "
read host
if [ "$host" == "" ];
then
  echo "host ou ip não informado, favor informe um host"
  exit
fi
echo ""
echo "Tentando comunicação com " $host "aguarde..."
ping -q -c1 $host > /dev/null
if [ "$?" -ne 0 ];
then
  echo "Conexao com: $host...[FALHOU]"
else
  echo "Conexao com: $host...[OK]"
fi
