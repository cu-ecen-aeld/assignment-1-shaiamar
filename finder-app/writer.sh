#!/bin/sh 
 
# Check if both arguments are provided 
if [ $# -lt 2 ]; then 
    echo "Error: Both writefile and writestr must be specified." 
    exit 1 
fi 
 
# Assign arguments to variables 
writefile=$1 
writestr=$2 
 
# Extract the directory path from the writefile path 
writedir=$(dirname "$writefile") 
 
# Create the directory if it doesn't exist 
mkdir -p "$writedir" 
if [ $? -ne 0 ]; then 
    echo "Error: Could not create directory $writedir" 
    exit 1 
fi 
 
# Create or overwrite the file with the given string 
echo "$writestr" > "$writefile" 
if [ $? -ne 0 ]; then 
    echo "Error: Could not write to file $writefile" 
    exit 1 
fi 
 
echo "File $writefile written successfully with content: $writestr" 
 
# Exit with success code 
exit 0 
