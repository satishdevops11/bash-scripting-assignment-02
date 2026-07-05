#!/bin/bash

echo "Enter file name:"
read file

head -n -3 "$file" > temp.txt
mv temp.txt "$file"

echo "Last 3 lines deleted successfully."
