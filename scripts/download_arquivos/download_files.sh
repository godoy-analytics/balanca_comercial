#!/bin/bash

#Este script extrai links para os arquivos necessários para a base de dados


#baixa arquivo html com os links para os arquivos
wget -q -O pagina http://www.mdic.gov.br/index.php/comercio-exterior/estatisticas-de-comercio-exterior/base-de-dados-do-comercio-exterior-brasileiro-arquivos-para-download

#extrai links do arquivo "pagina". Apenas arquivos contidos no direto "mun"
sed -n -r '{s/.*?href=(.*?)".*$/\1/
	    s/.*(\/balanca.*)" .*/\1/p}' pagina > arquivos_download 

sed -i -r '/mun/!d' arquivos_download          

#baixa arquivos do links 
echo "Baixando `sed -n '$ =' arquivos_download` arquivos para a base de dados da balança comercial. Por favor, aguarde..."
sed -i -r 's/(.*)/http:\/\/www.mdic.gov.br\1/' arquivos_download
wget -nv -i arquivos_download

echo "Arquivos baixados com sucesso."



