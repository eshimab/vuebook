#!/bin/bash







# ------------------ SHRINKING PNG FILES
input_dir=$(pwd) # Get PWD
output_dir="${input_dir}" # Set Output Dir (same dir)
# Create directories for saving converted images
orig_dir="${input_dir}/origimg"
mkdir -p "${orig_dir}"

# -------- Create the sync dir in vuebook/assets-oversized/
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
project_dir=$(echo "$input_dir" | cut -d'/' -f1-4)
# The /Users/username/vuebook/assets-oversized
oversized_assets_dir="$project_dir/assets-oversized"
# The target dir with filestructure in assets-oversized
oversize_dir="$oversized_assets_dir${input_dir#$project_dir}/origimg"
mkdir -p "${oversize_dir}"

# Original full-resolution PNGs
fullres_dir="${input_dir}/origimg/fullres"
mkdir -p "${fullres_dir}"
input_all_pngs="${input_dir}/*.png"
rsync --archive --progress --recursive --verbose $input_all_pngs $fullres_dir

# Full Colors Backup
fullcolors_dir="${input_dir}/origimg/fullcolors"
mkdir -p "${fullcolors_dir}"
input_all_pngs="${input_dir}/*.png"
rsync --archive --progress --recursive --verbose $input_all_pngs $fullcolors_dir

# Sync Files To assets-oversized
orig_all_files="${orig_dir}/*"
rsync --archive --progress --recursive --verbose $orig_all_files $oversize_dir

# File Conversion with ImageMagick
# Loop through png Files to convert them
mkdir -p "${orig_dir}/preconvert"
for file in "$input_dir"/*.png; do
    # Get Filename
    filename=$(basename "$file")
    # Backup Original
    cp "$file" "${orig_dir}/preconvert/$filename" 
    # REPLACE ORIGINAL
    echo "converting $filename"
    # Get the width of the image using identify command
    width=$(identify -format '%w' "$file")
    # Check if width is above 1000px, and resize only if necessary
    if [ "$width" -gt 1000 ]; then
        rsync --archive --progress --recursive --verbose --ignore-existing $file $fullres_dir
        convert "$file" -resize 720x "$file"
    fi
    # Apply ImageMagick 
    # convert "$file" -colors 256 "$file"
    rsync --archive --progress --recursive --verbose --ignore-existing $file $fullcolors_dir
    convert "$file" -colors 256 "$file"
done

# Sync Files To assets-oversized
orig_all_files="${orig_dir}/*"
rsync --archive --progress --recursive --verbose $orig_all_files $oversize_dir

# Remove dir
rm -r $orig_dir

# Check Before Remove?
echo "\n----ORIG DIR"
echo $orig_dir
ls -la $orig_dir
echo "Assets Oversized DIR"
echo $oversize_dir
ls -la $oversize_dir