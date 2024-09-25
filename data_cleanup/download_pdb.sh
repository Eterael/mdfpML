#!/bin/bash

# Loop through each line of the file 'file_list.txt'
while IFS= read -r line
do
    # Use wget to download the file using the constructed URL
    wget "https://files.rcsb.org/download/${line}.pdb1.gz"
done < pdb_ids.txt 
