#!/bin/bash





# Check if the user provided the text to add
if [ $# -eq 0 ]; then
    echo "Usage: $0 <text_to_add>"
    exit 1
fi

# Text to add to the start of filenames
text_to_add="$1"

# Iterate over files in the current directory
for file in *; do
    # Check if the file name starts with "img-" or "ifm-"
    if [[ "$file" == img-* || "$file" == ifm-* ]]; then
        # Add the text to the start of the filename
        new_name="${text_to_add}${file}"
        # Rename the file
        mv "$file" "$new_name"
        echo "Renamed $file to $new_name"
    fi
done
