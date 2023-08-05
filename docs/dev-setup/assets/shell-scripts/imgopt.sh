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
    
    echo "NEW LOOP"
    echo "Full filepath"
    echo $file
    echo "Filename"
    echo $filename
    # Create png output
    png_output_file="${output_dir}/${filename%.*}.png"
    # Convert to png with sips
    sips -s format png "$file" --out "$png_output_file"
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
target_dir="$oversized_assets_dir${input_dir#$project_dir}/origimg"
mkdir -p "${target_dir}"
# Loop through PNGs
for file in "$input_dir"/*.png; do
    # Get Filename
    filename=$(basename "$file")
    # Backup Original
    cp "$file" "${orig_dir}/$filename" 
    # REPLACE ORIGINAL
    # Apply ImageMagick 
    convert "$file" -resize 720x -colors 256 "$file"
done

# Sync Files
orig_all_files="${orig_dir}/*"
rsync --archive --progress --recursive --verbose $orig_all_files $target_dir
echo "\n----ORIG DIR"
ls -la $orig_dir
echo "TARGET DIR"
ls -la $target_dir

# Remove dir
rmdir -r $orig_dir
