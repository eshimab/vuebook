#!/bin/bash







# ------------------ CONVERTING HEIC
input_dir=$(pwd) # Get PWD
output_dir="${input_dir}" # Set Output Dir (same dir)
# Create Dir for original images
# orig_dir="${input_dir}/origimg"
# mkdir -p "${orig_dir}"

# -------- Create the sync dir in vuebook/assets-oversized/
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
project_dir=$(echo "$input_dir" | cut -d'/' -f1-4)
# The /Users/username/vuebook/assets-oversized
oversized_assets_dir="$project_dir/assets-oversized"
# The target dir with filestructure in assets-oversized
oversize_dir="$oversized_assets_dir${input_dir#$project_dir}/origimg"
mkdir -p "${oversize_dir}"

# Make HEIC Backup
heic_dir="${orig_dir}/heic"
mkdir -p "${heic_dir}"
input_all_heic="${input_dir}/*.HEIC"
rsync --archive --progress --recursive --verbose $input_all_heic $heic_dir

# Filetype conversion with sips
# Loop through HEIC files in the input directory
mkdir -p "${orig_dir}/preconvert"
for file in "$input_dir"/*.HEIC; do
    # Convert HEIC to PNG and save it in original-png directory
    filename=$(basename "$file")
    # Backup Original
    # cp "$file" "${orig_dir}/preconvert/$filename" 

    echo "converting $filename"
    # Create png output
    png_output_file="${output_dir}/${filename%.*}.png"
    # Convert to png with sips
    sips -s format png "$file" --out "$png_output_file"
    # Delete heic
    rm "$file"
done

# Sync Files To assets-oversized
orig_all_files="${orig_dir}/*"
rsync --archive --progress --recursive --verbose $orig_all_files $oversize_dir

# Remove Orig File Dir.
rm -r $orig_dir

# Check Before Remove?
echo "\n----ORIG DIR"
echo $orig_dir
ls -la $orig_dir
echo "Assets Oversized DIR"
echo $oversize_dir
ls -la $oversize_dir