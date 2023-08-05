#!/bin/bash







# Specify the input directory containing HEIC files
# input_dir="/Users/eshim/vuebook/docs/influx-flight/flight-begin/assets/img-power"
input_dir=$(pwd)
output_dir="${input_dir}"
# Create directories for saving converted images
orig_dir="${input_dir}/origimg"

mkdir -p "${orig_dir}"
# mkdir -p "${orig_dir}/heic"
# Double check
echo $input_dir
echo $output_dir
echo $orig_dir


# Loop through HEIC files in the input directory
for file in "$input_dir"/*.HEIC; do
    # Convert HEIC to PNG and save it in original-png directory
    filename=$(basename "$file")
    # Create png output
    png_output_file="${output_dir}/${filename%.*}.png"
    # Convert to png with sips
    sips -s format png "$file" --out "$png_output_file"
    # Backup heic
    mv "$file" "${orig_dir}/heic/" 
    # Optional Conversion
    # cp "$png_output_file" "${orig_dir}/"
    # convert "$png_output_file" -resize 720x -colors 256 "$png_output_file"
done



# ------------------ CONVERTING PNGS
# Loop through PNG files in the input directory
input_dir=$(pwd)
output_dir="${input_dir}"
# Create directories for saving converted images
orig_dir="${input_dir}/origimg"
mkdir -p "${orig_dir}"

# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
project_dir=$(echo "$input_dir" | cut -d'/' -f1-4)
# The /Users/username/vuebook/oversized-assets
oversized_assets_dir="$project_dir/oversized-assets"
# The target dir with filestructure in oversized-assets
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

# Sync Files To oversized-assets
orig_all_files="${orig_dir}/*"
rsync --archive --progress --recursive --verbose $orig_all_files $oversize_dir

# File Conversion with ImageMagick
# Loop through Files to convert them
mkdir -p "${orig_dir}/preconvert"
for file in "$input_dir"/*.png; do
    # Get Filename
    filename=$(basename "$file")

    # Backup Original
    cp "$file" "${orig_dir}/preconvert/$filename" 

    # REPLACE ORIGINAL
    echo "converting $filename"
    # Apply ImageMagick 
    convert "$file" -colors 256 "$file"
    # convert "$file" -resize 720x -colors 256 "$file"
done

# Sync Files To oversized-assets
orig_all_files="${orig_dir}/*"
rsync --archive --progress --recursive --verbose $orig_all_files $oversize_dir


echo "\n----ORIG DIR"
echo $orig_dir
ls -la $orig_dir
echo "Oversized Assets DIR"
echo $oversize_dir
ls -la $oversize_dir

# Remove dir
rm -r $orig_dir
