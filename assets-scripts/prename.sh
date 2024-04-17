#!/bin/bash

# Add the scripts directory to the PATH
# export PATH=$PATH:~/vuebook/assets-scripts/

# Check if the user provided the regular expression pattern and replacement text
if [ $# -lt 2 ]; then
    echo "Usage: $0 <pattern> <replacement_text>"
    exit 1
fi

# Pattern to search for in filenames
pattern="flowmeter"

# Replacement text for the matched pattern
replacement_text="img-flowmeter"

# Preview the changes
echo "Preview of changes:"
for file in *; do
    if [[ "$file" =~ $pattern ]]; then
        new_name="${file//$pattern/$replacement_text}"
        echo "$file -> $new_name"
    fi
done

# Prompt the user to confirm the changes
read -p "Do you want to proceed with these changes? (yes/no): " confirm
if [ "$confirm" == "yes" ]; then
    # Apply the changes
    for file in *; do
        if [[ "$file" =~ $pattern ]]; then
            new_name="${file//$pattern/$replacement_text}"
            mv "$file" "$new_name"
            echo "Renamed $file to $new_name"
        fi
    done
    echo "Changes applied successfully."
else
    echo "No changes were made."
fi
