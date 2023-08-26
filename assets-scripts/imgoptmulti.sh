#!/bin/bash







# ------------------ CONVERTING HEIC
# dir_heic=$(pwd) # Get PWD
dir_asset="/Users/eshim/vuebook/assets-new"
dir_prefix="ifm-lab-microscope"
# file_prefix=""
dir_anno="$dir_asset/$dir_prefix/$dir_prefix-anno" # Set Output Dir (same dir)
dir_site="$dir_asset/$dir_prefix/$dir_prefix-site" # Set Output Dir (same dir)
echo "ANNO Dir: $dir_anno"
echo "SITE Dir: $dir_site"
mkdir -p "$dir_site"

# Filetype conversion with sips
# Loop through HEIC files in the input directory
for file_full in "$dir_anno"/*.png; do
    # Get file_name without extension
    file_name=$(basename "$file_full")
    # Create site output file
    # filepath_site="${dir_site}/${file_name%.*}.png"
    filepath_anno="$file_full"
    filepath_site="$dir_site/$file_name"
    # Check before running?
    echo "SOURCE $filepath_anno"
    echo "TARGET $filepath_site"
    # Reduce Image size via reducing colors
    convert "$filepath_anno" -colors 256 "$filepath_site"
    echo "---- $file_name.png Complete! -------"
    # echo "---- ${file_name%.*}.png Complete! -------"
done

echo "Conversion complete for $dir_anno"
# Saved for posterity
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
# project_dir=$(echo "$dir_heic" | cut -d'/' -f1-4)