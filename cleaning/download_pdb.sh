#!/bin/bash

# Loop through each line of the file 'pdb_set.txt'
while IFS= read -r line
do
    # Strip any extra invisible characters from the line
    line=$(echo "$line" | tr -d '\r\n')
    
    # Use wget to download the file using the constructed URL
    wget "https://files.rcsb.org/download/${line}.pdb"
done < pdb_set.txt
