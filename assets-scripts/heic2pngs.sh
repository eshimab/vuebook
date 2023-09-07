#!/bin/bash







# ------------------ CONVERTING HEIC
# dir_heic=$(pwd) # Get PWD
dir_asset="/Users/eshim/vuebook/assets-new"
dir_prefix="ifm-lab-startup-init"
dir_heic="$dir_asset/$dir_prefix/$dir_prefix-heic"
dir_pngs="$dir_asset/$dir_prefix/$dir_prefix-pngs" # Set Output Dir (same dir)
echo "HEIC Dir: $dir_heic"
echo "PNGS Dir: $dir_pngs"
mkdir -p "$dir_pngs"

# Filetype conversion with sips
# Loop through HEIC files in the input directory
for file_heic in "$dir_heic"/*.HEIC; do
    # Get filename without extension
    filename=$(basename "$file_heic")
    # Create png output
    filepath_png="${dir_pngs}/${filename%.*}.png"
    # Check before running?
    echo "Converting ${filename%.*}.HEIC --> ${filename%.*}.png"
    # Convert to png with sips
    sips -s format png "$file_heic" --out "$filepath_png"
    echo "---- ${filename%.*}.png Complete! -------"
done

echo "Conversion complete for $dir_pngs"
# Saved for posterity
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
# project_dir=$(echo "$dir_heic" | cut -d'/' -f1-4)

