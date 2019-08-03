#!/usr/bin/env bash

echo "Testando For loop"

for i in {0..10};
do
  echo "$i"
done
# OU
# for (( x = 0; x <= 10; x++ ));
# do
#   echo "$x"
# done

echo " "
echo "--------------------------------------------------"
echo " "
echo "Testando o comando seq com intervalo"
for i in $(seq 1 5 100);
 do
  echo “$i”
done
echo " "
echo "--------------------------------------------------"
echo " "
echo "Testando o comando seq"
for i in $(seq 1 100);
do
 echo “$i”
done
