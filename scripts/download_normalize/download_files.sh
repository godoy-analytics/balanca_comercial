#!/bin/bash


# VARIABLES
download_dir="../../data/raw_data/"
files_list="download_list_2"

echo "Downloading data. Please wait..."

# DOWNLOAD
wget -a "$download_dir/log" -P $download_dir -i $files_list





