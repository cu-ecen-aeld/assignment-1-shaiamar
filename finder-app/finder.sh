#!/bin/sh  
 
if [ $# -lt 2 ] 
then  
    echo "[E]: No directory or text to search"  
    exit 1  
fi  
  
directory=$1  
string=$2  
  
if [ ! -d "$directory" ] 
then  
    echo "Error: The directory $directory does not exist."  
    exit 1  
fi  
  
filesNum=$(find "$directory" -type f | wc -l)  
  
linesNum=$(grep -r "$string" "$directory" 2>/dev/null | wc -l)  
  
echo "The number of files are $filesNum and the number of matching lines are $linesNum"  
  
exit 0  
