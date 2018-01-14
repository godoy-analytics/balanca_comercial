#!/bin/bash

#Este script diminui em 10x o numero de linhas de um arquivo, pulando de 10 em 10. Ou seja, lê todo o arquivo, não cria clusters

echo "Iniciando a diminuição dos `find . -maxdepth 1 -iname "*csv" | wc -l`. Por favor, aguarde..."

find . -maxdepth 1 -iname "*csv" -exec sed -i -n '/.*/N;N;N;N;N;N;N;N;N;P' {} \;

echo "Script concluído com sucesso"


