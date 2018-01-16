#!/bin/bash


# VARIABLES
download_dir="./raw_data/"
files_list="files_list"


# DATA URLS TO DOWNLOAD
#export_data_url="http://www.mdic.gov.br/balanca/bd/mun/EXP_MUN_COMPLETA.zip"
#import_data_url="http://www.mdic.gov.br/balanca/bd/mun/IMP_MUN_COMPLETA.zip"
#export_data_validation_url="http://www.mdic.gov.br/balanca/bd/mun/TOTAL_CONFERENCIA_EXP.csv"
#import_data_validation_url="http://www.mdic.gov.br/balanca/bd/mun/TOTAL_CONFERENCIA_IMP.csv"


echo "Downloading data. Please wait..."

# DOWNLOAD
#wget -a "$download_dir/log" -P $download_dir $export_data_url
#wget -a "$download_dir/log" -P $download_dir $import_data_url
#wget -a "$download_dir/log" -P $download_dir $export_data_validation_url
wget -a "$download_dir/log" -P $download_dir -i $files_list





