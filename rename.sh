#!/bin/bash

# Check if correct number of arguments is passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <old_text> <new_text>"
    exit 1
fi

# Directory containing the files
directory="./volumes/sftp/cps"

# Text to be replaced and new text
old_text="$1"
new_text="$2"

# Iterate over all files in the directory matching the pattern
find "$directory" -type f -name "*$old_text*.csv" -print0 | while IFS= read -r -d '' original_file; do
    # Replace the old text with the new text in the file name
    new_file="${original_file//$old_text/$new_text}"

    # Rename the file
    mv "$original_file" "$new_file"

    # Print the new file name
    echo "Renamed '$original_file' to '$new_file'"
done
