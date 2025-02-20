#!/bin/bash

# Check if at least one argument (file) is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 file1 file2 ... fileN"
    exit 1
fi

# Output file to store results
outputFile="outputResults.txt"

# Initialize counters
totalLines=0
fileCount=0

# Empty the output file before writing
> "$outputFile"

# Loop through each file provided as an argument
for file in "$@"; do
    if [ -f "$file" ]; then
        numLines=$(wc -l < "$file") # Count lines in the file
        totalLines=$((totalLines + numLines)) # Accumulate the total
        fileCount=$((fileCount + 1))
        
        # Print intermediate results
        echo "File: $file - Lines: $numLines"
        echo "File: $file - Lines: $numLines" >> "$outputFile"
    else
        echo "Warning: $file does not exist!"
        echo "Warning: $file does not exist!" >> "$outputFile"
    fi
done

# Print final results
echo "Total files checked: $fileCount"
echo "Total lines counted: $totalLines"
echo "Total files checked: $fileCount" >> "$outputFile"
echo "Total lines counted: $totalLines" >> "$outputFile"

