#!/bin/bash







# ------------------ CONVERTING HEIC
# dir_heic=$(pwd) # Get PWD
dir_asset="/Users/eshim/vuebook/assets-new"
dir_prefix="ifm-lab-startup-init"
dir_pngs="$dir_asset/$dir_prefix/$dir_prefix-pngs" # Set Output Dir (same dir)
dir_site="$dir_asset/$dir_prefix/$dir_prefix-site" # Set Output Dir (same dir)
echo "PNGS Dir: $dir_pngs"
echo "SITE Dir: $dir_site"
mkdir -p "$dir_site"

# Filetype conversion with sips
# Loop through HEIC files in the input directory
for file_png in "$dir_pngs"/*.png; do
    # Get filename without extension
    filename=$(basename "$file_png")
    # Create site output file
    filepath_site="${dir_site}/${filename%.*}.png"
    # Check before running?
    echo "Optimizing Image ${filename%.*}.png"
    # Reduce Image size via reducing colors
    convert "$file_png" -colors 256 "$file"
    echo "---- ${filename%.*}.png Complete! -------"
done

echo "Conversion complete for $dir_site"
# Saved for posterity
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
# project_dir=$(echo "$dir_heic" | cut -d'/' -f1-4)