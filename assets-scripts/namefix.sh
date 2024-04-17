#!/bin/bash








old_string="ifm-"
new_string="img-"

# Iterate over files in the current directory
for file in *; do
    # Check if the file name matches the pattern "ifm-*.png"
    if [[ "$file" == "$old_string"*.png ]]; then
        # Extract the part after "ifm-" and assign it to a variable
        new_name="${new_string}${file#$old_string}"
        # Rename the file
        mv "$file" "$new_name"
        echo "Renamed $file to $new_name"
    fi
done

