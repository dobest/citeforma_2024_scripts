#!/bin/bash


read -p "Introduza o nome do ficheiro: " ficheiro

if [ -f "$ficheiro" ]; then
    echo "Numero de linhas: $(wc -l < "$ficheiro")"
    echo "Numero de palavras: $(wc -c < "$ficheiro")"
    echo "Primeiras cinco linhas do ficheiro:"
    head -n 5 "$ficheiro"
    echo "Linhas com a palavra 'erro':"
    grep -i "erro" "$ficheiro"
else
    echo "Ficheiro não encontrado"
fi