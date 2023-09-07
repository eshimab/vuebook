#!/bin/bash




# ------------------ CONVERTING HEIC
# SOURCE
dir_prefix="ifm-lab-microscope"
file_prefix="ifm-startup-microscope-objective-main-2"
file_type="png"
# TARGET
dir_output="flight-sorties"
dir_img="img-microscope"

overide_mkdir=1 # 1 = Make target dir if it does not exist

# Project
dir_base="/Users/eshim/vuebook"
# IFM
dir_ifm="$dir_base/docs/influx-flight"
# Build Filepaths
dir_asset="$dir_base/assets-new"
# Build Image Dirs
dir_anno="$dir_asset/$dir_prefix/$dir_prefix-anno"
dir_crop="$dir_asset/$dir_prefix/$dir_prefix-crop"
dir_dims="$dir_asset/$dir_prefix/$dir_prefix-dims"
dir_site="$dir_asset/$dir_prefix/$dir_prefix-site"
mkdir -p "$dir_crop"
mkdir -p "$dir_dims"
mkdir -p "$dir_site"
# Create Filepaths
filepath_anno="$dir_anno/$file_prefix.$file_type"
filepath_crop="$dir_crop/$file_prefix.$file_type"
filepath_dims="$dir_dims/$file_prefix.$file_type"
filepath_site="$dir_site/$file_prefix.$file_type"
# Debug
# echo "filepath_anno = $filepath_anno"
# echo "filepath_dims = $filepath_dims"
# echo "filepath_site = $filepath_site"


# dir_target="$dir_ifm/$dir_output/assets/$dir_img"
dir_target="$dir_site"

filepath_src="$dir_anno/$file_prefix.$file_type"
filepath_out="$dir_target/$file_prefix.$file_type"

# Report
echo "      "
echo "      "
echo "------      Begin img-publish script    --------"
echo "Begin img-publish optimization for $filepath_src"
echo "      "
echo "------      Reporting Options    --------"
# Report Write Overide
overide_write=0 # 1 = Replace target file if it exsits
if ((overide_write == 1)); then
    echo "overide_write = $overide_write - Replacing Files if they exist"
elif ((overide_write == 0)); then
    echo "overide_write = $overide_write - (default) No file replacement"
fi
# Report Byte Overide
overide_byte=1   # 1 = No max file size (default 1)
# Set Max Filesize 2,100,000 = 2.1MB
byte_max=2100000 # Bytes
if ((overide_byte == 1)); then
    echo "overide_byte = $overide_byte - No Max Filesize (default)"
elif ((overide_byte == 0)); then
    echo "overide_byte = $overide_byte - Max Byte Size of byte_max = $byte_max"
fi
# Report Color Overide
overide_cols=0  # 1 = No Limit to Colors (default 0) 
# Max colors in multiples of two
max_colors=256
if ((overide_cols == 1)); then
    echo "overide_cols = $overide_cols - No Max Colors"
elif ((overide_cols == 0)); then
    echo "overide_cols = $overide_cols - Max Num Colors of max_colors = $max_colors (default)"
fi
# Report Dimensions Overide
overide_dims=0  # 1 = No Max dims (or use old file) (default 0)
# Dimensions in pixels
max_wide=1200
max_tall=1000
if ((overide_dims == 1)) && [ ! -e "$filepath_dims" ]; then
    echo "overide_dims = $overide_dims - No max Dims"
elif ((overide_dims == 1)) && [ -e "$filepath_dims" ]; then
    echo "overide_dims = $overide_dims - Using Max Dims from previous file (default)"
elif ((overide_dims == 0)); then
    echo "overide_dims = $overide_dims - Overide Max Dims to max_wide = $max_wide and max_tall = $max_tall"
fi
# Report Target File
echo "      "
echo "------      Reporting Target File    --------"
echo "Target dir_prefix = $dir_prefix"
echo "Target file_prefix.file_type = $file_prefix.$file_type"
# echo ""

# Check to proceed
check_proceed=0
echo "      "
echo "------      Begin? Enter 1 to proceed   --------"
read -p 'Enter 1 to Proceed, 0 to exit.   ' check_proceed
if ((check_proceed == 0)); then
    echo "Exitting because check_proceed = $check_proceed"
    exit 1
fi

echo "      "
echo "------      Running Script!   --------"


echo "      "
echo "------      Transfer Crop to Anno? 0 = no, 1 = yes, 2 = only this  --------"
check_crop_to_anno=0
overide_crop=1
read -p 'Set check_crop_to_anno = ' check_crop_to_anno
if ((overide_write == 1)) && [ -e "$filepath_crop" ] && [ -e "$filepath_anno" ]; then
    echo "      "
    echo "------    File Exists in filepath_anno Set override_crop = 1?  --------"
    read -p 'Set overide_crop = ' overide_crop
fi

# Transfer from crop to anno if requested
if ((overide_crop == 0)) && ((check_crop_to_anno == 0)); then
    echo " No transfer from crop. "
elif ((overide_crop == 1)) && ((check_crop_to_anno == 1)); then
    echo "Transfer crop to anno and continue "
    rsync -arpv "$filepath_crop" "$filepath_anno"
elif ((overide_crop == 1)) && ((check_crop_to_anno == 2)); then
    echo "Transfer crop to anno and exit"
    rsync -arpv "$filepath_crop" "$filepath_anno"
    echo "      "
    echo "------      Crop xfer Complete. Exiting!   --------"
    exit 1
fi


# Check Abort
echo "      "
echo "------      Checking Abort Conditions    --------"
# Abort Conditions
if [ ! -e "$filepath_src" ]; then
    echo "SOURCE FILE MISSING. EXITING. $filepath_src"
    exit 1
# elif [ -e "$filepath_out" ] && (( overide_write == 0 )); then
#     echo "FILE OUTPUT EXISTS AND overide_write = ${overide_write}. EXITING."
#     echo "OUTPUT FILE: $filepath_out"
#     exit 1
elif [ ! -e "$dir_target" ]; then
    echo "OUTPUT DIR MISSING AND overide_mkdir = ${overide_mkdir}. EXITING."
    echo "OUTPUT DIR: $dir_target"
    exit 1
else
    echo "No abort conditions found!"
fi

# -----------------  Set File Dimensions  ------------------------
# Get Image Dimensions from source and pre-existing file in filepath_dims
echo "      "
echo "------      Begin Image Dimensions Check for   -------"
# Set overide Condition
if ((overide_write == 1)); then
    overide_dims=1
else
    overide_dims=0
fi
# Get input if file exists in anno
if ((overide_dims == 0)) && [ -e "$filepath_anno" ] || [ -e "$filepath_dims" ]; then
    echo "      "
    echo "------    File Exists in filepath_dims Set overide_dims = 1?  --------"
    
    read -p 'Set overide_dims = ' overide_dims
    if ((overide_dims != 1)); then
        echo "------    No Write Overide for dims Exiting!  --------"
        echo "      "
        exit 1
    fi
fi
# Begin Dim stuff
echo "filepath_src = $filepath_src"
src_wide=$(identify -format "%w" $filepath_src)
src_tall=$(identify -format "%h" $filepath_src)
echo "src_wide = $src_wide   and    src_tall = $src_tall"
echo "     "
# Init
dims_wide=0
dims_tall=0
# Check Dims
if [ -e "$filepath_dims" ]; then
    dims_wide=$(identify -format "%w" $filepath_dims)
    dims_tall=$(identify -format "%h" $filepath_dims)
    # echo "Dims Wide: $dims_wide"
    # echo "Dims Tall: $dims_tall"
    if ((overide_dims == 1)); then
        echo "Using Dimensions in from Previous File $filepath_dims"
        # Dimensions in pixels
        max_wide="$dims_wide"
        max_tall="$dims_tall"
        echo "max_wide = $max_wide    and    max_tall = $max_tall"
        # echo "max_tall: $max_tall"
        overide_dims=0
    fi
elif ((overide_dims == 0)); then
    echo "Applying image resize overide"
    echo "max_wide = $max_wide    and    max_tall = $max_tall"
fi

# Apply Dimension Scaling if needed
echo "      "
echo "------      Apply Image Dimensions?   ------  "
echo "      "
# Apply Image Sizing
if (( overide_dims == 0 )) && (( src_wide > $max_wide || src_tall > $max_tall )); then
    echo "------  Yes! Apply Image Dimensions Conversion  ------  "
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
    # Resize the image with imagemagick
    convert "$filepath_src" -resize "$scale_factor" "$filepath_dims"
    echo "Image Scaled and sent to $filepath_dims"
else
    echo "------  No. Dimensions unchanged.  ------  "
    rsync -arpv "$filepath_src" "$filepath_dims"
fi


# Begin color conversion from dims to site
filepath_src="$filepath_dims"
echo "      "
echo "------      Apply Color Conversion?      --------  "
echo "filepath_src = $filepath_src"
echo "      "
# Set overide Condition
if ((overide_write == 1)); then
    overide_site=1
else
    overide_site=0
fi
# Get input if file exists in anno
if ((overide_site == 0)) && [ -e "$filepath_dims" ] || [ -e "$filepath_site" ]; then
    echo "      "
    echo "------    File Exists in filepath_site Set overide_site = 1?  --------"
    read -p 'Set overide_site = ' overide_site
    if ((overide_site != 1)); then
        echo "------    No Write Overide for filepath_site Exiting!  --------"
        echo "      "
        exit 1
    fi
fi
# Convert Colors if above max_colors
colors_src=$(identify -format "%k" "$filepath_src")
# Check if colors_src is above 256
if [ "$colors_src" -gt "$max_colors" ]  & (( overide_cols == 0 )); then
    echo "------      Yes! Converting Colors      --------  "
    echo "colors_src = $colors_src Convert to ${max_colors}"
    # Convert with 256 colors
    convert "$filepath_src" -colors $max_colors "$filepath_site"
else
    echo "------      No. Colors below max.      --------  "
    echo "Number of colors is ${max_colors} or less. No need to convert."
fi

# Get the filesize in bytes using stat on macOS
file_byte=$(stat -f %z "$filepath_src")
# echo "filepath_src has file_byte = $file_byte"
if [ "$file_byte" -gt "$byte_max" ] && (( overide_byte == 0 )); then
   echo "FILE SIZE ABOVE MAX ${byte_max} BYTES ND overide_write = ${overide_write}. EXITING"
   exit 1
fi

echo "      "
echo "-------    Script Completed!    ---------   "
echo "Final file in filepath_site = $filepath_site"
echo "      "
echo "-------    Exiting with success!    ---------   "
echo "      "
exit 1
# Sync File with rsync
# rsync -arvp "$filepath_src" "$filepath_out"
# fi


# echo "Conversion complete for $dir_dims"
# Saved for posterity
# Extract the relevant parts of the current directory
# The /Users/username/vuebook part
# project_dir=$(echo "$dir_heic" | cut -d'/' -f1-4)