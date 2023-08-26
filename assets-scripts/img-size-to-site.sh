#!/bin/bash







# ------------------ CONVERTING HEIC
# dir_heic=$(pwd) # Get PWD
dir_asset="/Users/eshim/vuebook/assets-new"
dir_prefix="ifm-lab-microscope"
file_prefix="ifm-startup-microscope-max-height-zoom"
file_type="png"
dir_size="$dir_asset/$dir_prefix/$dir_prefix-size" # Set Output Dir (same dir)
dir_site="$dir_asset/$dir_prefix/$dir_prefix-site" # Set Output Dir (same dir)

dir_source="$dir_size"
dir_target="$dir_site"

filepath_src="$dir_source/$file_prefix.$file_type"
filepath_out="$dir_target/$file_prefix.$file_type"
if [ ! -e "$filepath_src" ]; then
    echo "SOURCE FILE MISSING. EXITING. $filepath_src"
    exit 1
elif [ -e "$filepath_out" ]; then
    echo "FILE OUTPUT EXISTS. EXITING. $filepath_out"
    exit 1
fi

# Get file_name without extension
file_name=$(basename "$filepath_src")
# mkdir -p "$dir_target"
# Reduce Image size via reducing colors
convert "$filepath_src" -colors 256 "$filepath_out"
echo "---- $file_name Complete! -------"
# echo "---- ${file_name%.*}.png Complete! -------"

# echo "Conversion complete for $dir_size"
# Saved for posterity
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
# project_dir=$(echo "$dir_heic" | cut -d'/' -f1-4)