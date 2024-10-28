#!/bin/bash

# Loop over all PDB files in the current directory
for file in *.pdb; do
	# Check if any PDB files exist
	if [ -e "$file" ]; then
    	# Use grep to remove lines starting with HETATM and save to a new file
    	grep -v "^HETATM" "$file" > "cleaned_$file"
    	echo "Processed $file -> cleaned_$file"
	else
    	echo "No PDB files found in the directory."
	fi
done
