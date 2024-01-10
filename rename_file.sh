#!/bin/bash

# Check if a file name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file-name>"
    exit 1
fi

# Original file name
original_file="$1"

# Step 1: Convert capital letters to lower case
lower_case_file=$(echo "$original_file" | tr '[:upper:]' '[:lower:]')

# Step 2: Replace spaces with underscores
no_spaces_file=$(echo "$lower_case_file" | tr ' ' '_')

# Step 3: Replace dashes with underscores
final_file=$(echo "$no_spaces_file" | tr '-' '_')

# Renaming the file
mv "$original_file" "$final_file"

echo "File renamed to $final_file"
