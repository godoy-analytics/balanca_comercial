#!/bin/bash

# Esse script tem o objetivo de montar a estrutura de diretórios que conterá os arquivos da base de dados da balança comercial
# Parâmetros
#    - diretorio raiz onde a estrutura será criada. Caso não exista o diretorio indicado, o mesmo será criado sob o diretório onde se encontra o arquivo do script. Caso exista, será solicitado outro nome de diretório para a criação da estrutura.

# PROCEDIMENTOS DO SCRIPT

# 1 - Cria estrutura de diretórios sob a qual serão baixados os arquivos da base de dados
# 2 - Faz download dos arquivos da base de dados alocando-os no diretório correspondente

# PARÂMETROS DO SCRIPT

# 1 - Nome do diretório que será criado, sob o qual será criada a estrutura de arquivos


if [ $# -ne 1 ]; then
	echo "Número de argumentos insuficiente ou excessivo. Apenas um argumento é permitido"
	exit 1;
fi

if [ -d $1 ]; then
	echo "Diretório já existe. Entre com um novo diretório."
	exit 1
fi

# criação dos diretórios
dir_raiz=$1
diretorios=(diversos estados_municipios exportacao importacao paises porto produto)
mkdir $dir_raiz

for dir in ${!diretorios[*]}
do
	mkdir $dir_raiz/${diretorios[dir]}
done
echo "Diretórios criados com sucesso"

# download dos arquivos





























