#!/bin/bash

# Specify the input directory containing HEIC files
input_directory="/Users/eshim/vuebook/docs/influx-flight/flight-begin/assets/img-power"
output_directory="${input_directory}/imgopt"

# Create directories for saving converted images
mkdir -p "${output_directory}/heic-orig"
mkdir -p "${output_directory}/png-orig"
mkdir -p "${output_directory}/png-reduced"

# Loop through HEIC files in the input directory
for file in "$input_directory"/*.HEIC; do
    # Save the original HEIC image
    cp "$file" "${output_directory}/heic-orig/"

    # Convert HEIC to PNG and save it in original-png directory
    filename=$(basename "$file")
    png_output_file="${output_directory}/png-orig/${filename%.*}.png"
    sips -s format png "$file" --out "$png_output_file"

    # Apply ImageMagick command to reduce image size and save it in assets directory
    reduced_output_file="${output_directory}/png-reduced/${filename%.*}.png"
    # convert "$png_output_file" -quality 50 -resize 30% "$reduced_output_file"
    convert "$png_output_file" -colors 256 "$reduced_output_file"
done

echo "Conversion and size reduction complete!"
