#!/bin/bash

# Specify the input directory containing png files
input_directory="/Users/eshim/vuebook/docs/influx-flight/flight-sorties/assets/img-sortware"
output_directory="${input_directory}"

rsync --archive --progress --recursive --verbose $input_directory /Users/eshim/vuebook/assets-oversized/png_fullcolor/

# Create directories for saving converted images
# mkdir -p "${output_directory}/png-orig"
# png_orig_dir="${output_directory}/png-orig"
# mkdir -p "${output_directory}/png-reduced"
png_reduced_dir="${output_directory}"

# Loop through png files in the input directory
for file in "$input_directory"/*.png; do
    # Get Filename
    filename=$(basename "$file")
    # Make Original filepath
    # png_output_file="${png_orig_dir}/${filename%.*}_orig.png"
    # Make Reduced filepath
    input_file="${input_directory}/${filename%.*}.png"
    reduced_output_file="${png_reduced_dir}/${filename%.*}.png"
    # Move original file
    # mv "$file" "${png_output_file}"
    # Apply ImageMagick
    convert "$input_file" -colors 256 "$reduced_output_file"
    # rm "${input_directory}/${filename}"
done



echo "Conversion and size reduction complete!"
