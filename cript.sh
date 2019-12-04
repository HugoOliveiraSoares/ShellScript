#/bin/bash

# passo 1 - substituição alfabetica
# passo 2 - substituição numerica
# passo 3 - Multiplicar cada caracter numerico pela sua pos
# passo 4 - Substituir os espaços por letras aleatorias
# passo 5 -

n() 
{ 
    echo "a b c d e f g h i j k l m n o p q r s t u v w x y z" | cut -d "$1" -f1 |
     tr " " "\n" | wc -l; 
}

la() # Gera letras aleatorias
{
    echo "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z" | cut -d" " -f$(( ($RANDOM%25)+1 ));
}

#Verifica a passagem de argumento
if [ "$1" == "" ];
then
    echo "Escreva um argumento para o script"
    exit
fi

ent=$1
echo "Strintg original: $ent"
echo 

# Inverte a sequencia do alfabeto | a = z , b = y
p1="$(echo "$ent" | tr "abcdefghijklmnopqrstuvwxyz" "zyxwvutsrqponmlkjihgfedcba")"
p2=$(echo $p1 | tr " " ":") # Troca os espaços originais por :
p3=$(echo $p2 | tr "\n" "@") # Troca a quebra de linha por @


p4=$(for a in $(seq $(echo -n "$p3" | wc -c)); do  # Separa cada letra
    carac=$(echo "$p3" | cut -b $a)

    il=$(echo $carac | grep "[a-z]")

    # Transforma as letras em numeros
    if [ "$il" != "" ];
    then
        n $carac
    else
        echo $carac
    fi

done | tr "\n" " ")

# Multiplica cada numero pela possição 
p5=$(for a in $p4;do
    in=$(echo $a | grep "[1-9]")
    if [ "$in" != "" ];
    then
        let count++
        echo -n "$(($a * $count))$(la)" # adiciona letras aleatorias
    else
        echo -n "$a$(la)" # adiciona letras aleatorias
    fi
done )

echo "String criptografada: $p5"
echo
