#!/bin/bash





user_dir="/Users/eshim"
assets_new_dir="$user_dir/vuebook/assets-new"
# Specify Source and target dirs
source_dir="$user_dir/Downloads"
target_dir="$assets_new_dir/startup-pictures/startup-orig-heic"
# Specify the source_string and target_string
source_string="IMG_"
target_string="ifm-startup-lab-"
#
echo "source_dir = $source_dir"
echo "target_dir = $target_dir"
mkdir -p "$target_dir"
# Loop through files in the directory
for source_filepath in "$source_dir"/*.HEIC; do
    # Extract the filename and extension
    filename=$(basename "$source_filepath")
    extension="${filename##*.}"
    echo "source_filepath is $source_filepath"
    # Check if the filename contains the source_string
    if [[ "$filename" =~ .*"$source_string".* ]]; then
        # Replace the source_string with the target_string using sed
        target_filename=$(echo "$filename" | sed "s/$source_string/$target_string/g")
        # Construct the new file path
        target_filepath="$target_dir/$target_filename" 
        # Copy the file with the -n option to prevent overwriting
        if mv -n "$source_filepath" "$target_filepath"; then
            echo "Moved $source_filepath to $target_filepath"
        else
            echo "File was not copied because a file with the same name already exists."
        fi
    fi
done 
