#!/bin/bash







# ------------------ CONVERTING HEIC
# dir_heic=$(pwd) # Get PWD
dir_asset="/Users/eshim/vuebook/assets-new"
dir_prefix="ifm-lab-microscope"
file_prefix="ifm-startup-microscope-max-height-zoom"
file_type="png"

dir_anno="$dir_asset/$dir_prefix/$dir_prefix-anno" # Set Output Dir (same dir)
dir_size="$dir_asset/$dir_prefix/$dir_prefix-size" # Set Output Dir (same dir)
mkdir -p "$dir_size"
max_wide=2000
max_tall=1600

dir_source="$dir_anno"
dir_target="$dir_size"

filepath_src="$dir_source/$file_prefix.$file_type"
filepath_out="$dir_target/$file_prefix.$file_type"

# echo "Source File: $filepath_src"
# echo "Output File: $filepath_out"

if [ ! -e "$filepath_src" ]; then
    echo "SOURCE FILE MISSING. EXITING. $filepath_src"
    exit 1
elif [ -e "$filepath_out" ]; then
    echo "FILE OUTPUT EXISTS. EXITING. $filepath_out"
    exit 1
fi

img_width=$(identify -format "%w" $filepath_src)
img_height=$(identify -format "%h" $filepath_src)
echo "Width:  $img_width"
echo "Height: $img_height"

# Check if width or height is above 1200px
if (( img_width > $max_wide || img_height > $max_tall )); then
    # Calculate scaling factor
    if (( img_width > max_wide )); then
        scale_factor="$max_wide"
    elif (( img_height > max_tall )); then
        scale_factor="x$max_tall"
    else
        scale_factor=""
    fi
    # Resize the image
    # convert "$filepath_src" -resize "$scale_factor" -colors 256 "$filepath_out"
    # else
      convert "$filepath_src" -resize "$scale_factor" "$filepath_out"
      echo "Image Scaled."
    # fi
else
    echo "Image dimensions are within the limit."
fi

# echo "Conversion complete for $dir_dims"
# Saved for posterity
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
# project_dir=$(echo "$dir_heic" | cut -d'/' -f1-4)