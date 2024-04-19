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



# Get file out of downloads
# cp ~/Downloads/IMG_2617.HEIC /Users/eshim/vuebook/assets-new/00-final-cuts/ifm-startup-house-air-open.heic
# 
# Go to Asset dir
# cd ~/vuebook/assets-new/00-final-cuts
# 
# Convert to PNG
# sips -s format png ifm-startup-house-air-open.heic --out ifm-startup-house-air-open.png
# 
# Manual cropping by User
# 
# Resize image to 600px
# convert ./ifm-startup-house-air-closed.png -resize 600 ./ifm-startup-house-air-closed-resized.png
# 
# Manually Annotation by User
# 
# Reduce Colors
# convert ifm-startup-house-air-closed.png -colors 256 ifm-startup-house-air-closed-color256.png 

filepath_src="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/IMG_2631.HEIC"
filepath_out="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/img-01p02-vacuum-in-box.png"
echo "converting $filepath_src"
echo "sending output to $filepath_out"
sips -s format png "$filepath_src" --out "$filepath_out"
# done
filepath_src="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/img-01p02-vacuum-in-box.png"




# Extra
max_tall=600
max_wide=600
filepath_src="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/img-01p02-vacuum-in-box.png"
filepath_out="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/img-01p02-vacuum-in-box.png"
src_wide=$(identify -format "%w" $filepath_src)
src_tall=$(identify -format "%h" $filepath_src)
echo "src_wide = $src_wide    and    src_tall = $src_tall"
echo "max_wide = $max_wide    and    max_tall = $max_tall"
# Calculate scaling factor
# If Image is taller than wide, then use max_tall
if (( src_tall > src_wide)) && (( src_tall > max_tall )); then
    echo "Scaling based on max_tall because image is hamburger"
    scale_factor="x$max_tall"
# If Image is Wide, use max_wide
elif (( src_wide > src_tall )) && (( src_wide > max_wide )); then
    echo "Scaling based on max_wide because image is hotdog"
    scale_factor="$max_wide"
else
    scale_factor=""
fi
convert "$filepath_src" -resize "$scale_factor" "$filepath_out"


# 