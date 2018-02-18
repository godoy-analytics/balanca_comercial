#!/bin/bash


#This script normalize the following files: 


# 1) NCM_SH_UTF8
# This file is normalized and generate 3 different files representing 3 tables in the database. The generated files are:
#   a) NCM_SH4
#   b) NCM_SH2
#   c) NCM_SECROM
#
# 2) UF_MUN_UTF8
#
# 3) PORTO_UTF8
#
# 4) UF_UTF_8
################################################################################################################################

data_dir="../../data/raw_data"
clean_data_dir="../../data/clean_data"

# file NCM_SH4
#cabecalho 
sed -r -n '1s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f6-10 > $clean_data_dir/ncm_sh4
#corpo 
sed -r -n '2,$s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f6-10 | sort | uniq >> $clean_data_dir/ncm_sh4

# file NCM_SH2
#cabecalho 
sed -r -n '1s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f10-14 > $clean_data_dir/ncm_sh2
#corpo 
sed -r -n '2,$s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f10-14 | sort | uniq >> $clean_data_dir/ncm_sh2

# file NCM_SECROM
#cabecalho 
sed -r -n '1s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f14-17 > $clean_data_dir/ncm_secrom
#corpo 
sed -r -n '2,$s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f14-17 | sort | uniq >> $clean_data_dir/ncm_secrom


# file UF_MUN_UTF8.csv
cut -f 2-3,5 -d , $data_dir/UF_MUN_UTF8.csv > $clean_data_dir/MUNICIPIOS.csv


# file PORTO_UTF8.csv
cut -f 2-4 -d , $data_dir/PORTO_UTF8.csv > $clean_data_dir/PORTOS.csv


# file UF_UTF_8
cut -f 2-5 -d , $data_dir/UF_UTF8.csv > $clean_data_dir/UF.csv











