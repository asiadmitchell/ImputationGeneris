#!/bin/bash
# STEP 1
# Run get raw DNA & format for imputation
# run this for every user upon file upload
# ./step1.sh file_path filename

file_path=$1
filename=$2

echo "Filepath: "$file_path
echo "Filename: "$filename
Rscript --vanilla scripts/preprocess-wrapper.R $file_path $filename > logs/warnings.logs
