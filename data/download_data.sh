#!/bin/bash


# VARIABLES
download_dir="./raw_data/"
files_list="files_list2"

echo "Downloading data. Please wait..."

# DOWNLOAD
wget -a "$download_dir/log" -P $download_dir -i $files_list





