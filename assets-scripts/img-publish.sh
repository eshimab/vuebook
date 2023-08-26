#!/bin/bash







# ------------------ CONVERTING HEIC
# SOURCE
dir_prefix="ifm-lab-microscope"
file_prefix="ifm-startup-microscope-max-height"
file_type="png"
# TARGET
dir_output="flight-sorties"
dir_img="img-microscope"
# Project
dir_base="/Users/eshim/vuebook"

# Set Max Filesize
size_max=2100000 # 1.1MB
# Set Max Colors
max_colors=256
# Set max Image Dims
max_wide=2000
max_tall=1600

# Overides
overide_write=1 # 1 = Replace target file if it exsits
overide_max=1   # 1 = No max file size
overide_mkdir=1 # 1 = Make target dir if it does not exist
overide_dims=1  # 1 = Apply Max dims
overide_cols=0  # 1 = No Limit to Colors


# Build Filepaths
dir_asset="$dir_base/assets-new"
dir_target="$dir_base/docs/influx-flight/$dir_output/assets/$dir_img"
# Set Source filepaths
dir_site="$dir_asset/$dir_prefix/$dir_prefix-site" # Set Output Dir (same dir)
# Create Filepaths
filepath_src="$dir_site/$file_prefix.$file_type"
filepath_out="$dir_target/$file_prefix.$file_type"

# Abort Conditions
if [ ! -e "$filepath_src" ]; then
    echo "SOURCE FILE MISSING. EXITING. $filepath_src"
    exit 1
elif [ -e "$filepath_out" ] & (( overide_write == 0 )); then
    echo "FILE OUTPUT EXISTS AND overide_write = ${overide_write}. EXITING."
    echo "OUTPUT FILE: $filepath_out"
    exit 1
elif [ ! -e "$dir_target" ] & (( overide_mkdir == 1 )); then
    echo "OUTPUT DIR MISSING AND overide_mkdir = ${overide_mkdir}. MAKING DIR"
    mkdir -p $dir_target
elif [ ! -e "$dir_target" ]; then
    echo "OUTPUT DIR MISSING AND overide_mkdir = ${overide_mkdir}. EXITING."
    echo "OUTPUT DIR: $dir_target"
    exit 1
fi

img_width=$(identify -format "%w" $filepath_src)
img_height=$(identify -format "%h" $filepath_src)
echo "Width:  $img_width"
echo "Height: $img_height"

# Check if width or height is above 1200px
if (( img_width > $max_wide || img_height > $max_tall )) & (( overide_dims == 1 )); then
  echo "Applying Max Dimensions"
    # Calculate scaling factor
    if (( img_width > max_wide )); then
        scale_factor="$max_wide"
    elif (( img_height > max_tall )); then
        scale_factor="x$max_tall"
    else
        scale_factor=""
    fi
    # Resize the image
      convert "$filepath_src" -resize "$scale_factor" "$filepath_src"
      echo "Image Scaled."
    # fi
# else
    # echo "Image dimensions are within the limit."
fi

# Convert Colors if above max_colors
colors_src=$(identify -format "%k" "$filepath_src")
# Check if colors_src is above 256
if [ "$colors_src" -gt "$max_colors" ]  & (( overide_cols == 0 )); then
    echo "SOURCE COLORS: $colors_src Convert to ${max_colors}"
    # Convert with 256 colors
    convert "$filepath_src" -colors $max_colors "$filepath_src"
else
    echo "Number of colors is ${max_colors} or less. No need to convert."
fi

# Get the filesize in bytes using stat on macOS
file_size=$(stat -f %z "$filepath_src")
if [ "$file_size" -gt "$size_max" ] && (( overide_max == 0 )); then
   echo "FILE SIZE ABOVE MAX ${size_max} BYTES ND overide_write = ${overide_write}. EXITING"
   exit 1
fi

# Sync File with rsync
rsync -arvp "$filepath_src" "$filepath_out"
# fi


# echo "Conversion complete for $dir_dims"
# Saved for posterity
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
# project_dir=$(echo "$dir_heic" | cut -d'/' -f1-4)