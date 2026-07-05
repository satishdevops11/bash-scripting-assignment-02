#!/bin/bash

echo "Enter directory name:"
read dir

if [ -d "$dir" ]
then
    echo "Directory already exists."
else
    mkdir "$dir"
    echo "Directory created successfully."
fi

