#!/bin/bash

#This script converts all csv files in the target directory, raw_data/ by default, to utf8, once text content contain special characters from portuguese language


data_dir="../../data/raw_data"

iconv -f iso-8859-1 -t utf-8//TRANSLIT < $data_dir/NCM_SH.csv > $data_dir/NCM_SH_UTF8.csv
iconv -f iso-8859-1 -t utf-8//TRANSLIT < $data_dir/PORTO.csv > $data_dir/PORTO_UTF8.csv
iconv -f iso-8859-1 -t utf-8//TRANSLIT < $data_dir/UF_MUN.csv > $data_dir/UF_MUN_UTF8.csv
iconv -f iso-8859-1 -t utf-8//TRANSLIT < $data_dir/UF.csv > $data_dir/UF_UTF8.csv
iconv -f iso-8859-1 -t utf-8//TRANSLIT < $data_dir/PAIS.csv > $data_dir/PAIS_UTF8.csv





