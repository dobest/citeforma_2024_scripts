#!/bin/bash


read -p "Digite um caminho " dir


echo "caminho passado por parametro" 
echo $dir

if [ -d "$dir" ]; then
    echo "O caminho é um diretório"
    cd "$dir"
else
    echo "O caminho não é um diretório"
    exit 1
fi

echo "conteudo do diretorio"
ls -la

mkdir -p backup

mv *.txt backup/

echo "ficheiros movidos"