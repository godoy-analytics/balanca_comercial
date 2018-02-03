#!/bin/bash

# This script normalize the file NCM_SH, extrating from it 3 different files that will be used to load data into database. 
# The extracted files are:
# 1) NCM_SH4
# 2) NCM_SH2
# 3) NCM_SECROM

data_dir="./raw_data"
clean_data_dir="./clean_data"

# arquivo NCM_SH4
#cabecalho 
sed -r -n '1s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f6-10 > $clean_data_dir/ncm_sh4
#corpo 
sed -r -n '2,$s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f6-10 | sort | uniq >> $clean_data_dir/ncm_sh4

# arquivo NCM_SH2
#cabecalho 
sed -r -n '1s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f10-14 > $clean_data_dir/ncm_sh2
#corpo 
sed -r -n '2,$s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f10-14 | sort | uniq >> $clean_data_dir/ncm_sh2

# arquivo NCM_SECROM
#cabecalho 
sed -r -n '1s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f14-17 > $clean_data_dir/ncm_secrom
#corpo 
sed -r -n '2,$s/","/"#"/pg' $data_dir/NCM_SH_UTF8.csv | cut -d# -f14-17 | sort | uniq >> $clean_data_dir/ncm_secrom














