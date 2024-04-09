#!/bin/bash


# ------------------ CONVERTING HEIC
# /Users/username/vuebook/assets-scripts
input_dir=$(pwd) # Get PWD
# Create Dir for original images
# -------- Create the sync dir in vuebook/assets-oversized/
# Extract the relevant parts of the current directory
# /Users/username
home_dir=$(echo "$input_dir" | cut -d'/' -f1-3)
download_dir="$home_dir/Downloads"
echo $home_dir
echo $download_dir
# The /Users/username/vuebook part
project_dir=$(echo "$input_dir" | cut -d'/' -f1-4)
# The /Users/username/vuebook/assets-new
assets_new_dir="$project_dir/assets-new"
assets_new_heic_dir="$project_dir/assets-new/heic"
mkdir -p "${assets_new_dir}"
mkdir -p "${assets_new_heic_dir}"


# file_target="heic"
# file_output="jpg"
asset_dir_type="jpg"

asset_dir_target="${assets_new_dir}"/"${asset_dir_type}"
mkdir -p "${asset_dir_target}"
# Rsync
download_files_type="${download_dir}"/*."${file_target}"
rsync --archive --progress --recursive --verbose $download_files_type $asset_dir_target

mkdir -p "${assets_new__dir}"
for file in "$download_dir"/*.HEIC; do
    # Convert HEIC to PNG and save it in original-png directory
    filename=$(basename "$file")
    # Backup Original
    cp "$file" "${orig_dir}/preconvert/$filename" 

    echo "converting $filename"
    # Create png output
    png_output_file="${output_dir}/${filename%.*}.png"
    # Convert to png with sips
    sips -s format png "$file" --out "$png_output_file"
    # Delete heic
    rm "$file"
done