#!/bin/bash

echo "Enter the directory name:"
read dir

cp -r "$dir" "${dir}_backup"

echo "Backup created successfully."
