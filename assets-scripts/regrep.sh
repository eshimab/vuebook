#!/bin/bash





# Pattern to search for in filenames
pattern="img-img-flowmeter"

# Replacement text for the matched pattern
replacement_text="img-01p03-flowmeter"

# Check if the user provided the regular expression and replacement text
if [ $# -lt 2 ]; then
    echo "Usage: $0 <pattern> <replacement_text>"
    exit 1
fi

# Iterate over files in the current directory
for file in *; do
    # Check if the file name matches the pattern
    if [[ "$file" =~ $pattern ]]; then
        # Perform the replacement
        new_name="${file//$pattern/$replacement_text}"
        # Rename the file
        mv "$file" "$new_name"
        echo "Renamed $file to $new_name"
    fi
done