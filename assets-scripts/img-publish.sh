#!/bin/bash




# ------------------ CONVERTING HEIC
# SOURCE
dir_prefix="ifm-startup-main-01"
file_prefix="ifm-startup-main-house-air-valve"

# TARGET
dir_sec="flight-sorties"
dir_img="img-drop156"

# Sync to Vuebook
send_to_vue=2 # 1 = Send to Vuebook
# Back-up IMage Copy from anno dir
backup_anno=1 # 1 = backup if it exists
# Max Colors
max_colors=256
# Set Max Filesize 2,100,000 = 2.1MB
byte_max=900000 # Bytes
# Dimensions in pixels
max_wide=600
max_tall=600

# ------      Overides    --------
overide_byte=0      # 0 = No max file size (default 1)
overide_cols=1      # 0 = No Limit to Colors (default 1) 
overide_dims=1      # 0 = No Max dims (or use old file) (default 1)
overide_crop=0      # 1 = Move file from Crop dir (default 0)
# Write Overides
overide_write_all=1  # 1 = Set all write overides to true
# Asset Dir Overides
overide_write_anno=1
overide_write_dims=1 # 1 = to overwrite in -dims (default 0)
overide_write_site=1
# Vuebook Overide
overide_write_vue=0  # 1 = to overwrite in vuebook (default 0)

# Other Checks
check_write_all=0
overide_mkdir=1     # 1 = Make target dir if it does not exist

# Project
dir_base="/Users/eshim/vuebook"
# IFM
dir_ifm="$dir_base/docs/influx-flight/$dir_sec/assets/$dir_img"
mkdir -p "$dir_ifm"
# Filetype
file_type="png"
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
# Create Output Directory
dir_output="$dir_base/docs/influx-flight/$dir_ifm/assets/$dir_img"
# Create Filepaths
filepath_anno="$dir_anno/$file_prefix.$file_type"
filepath_crop="$dir_crop/$file_prefix.$file_type"
filepath_dims="$dir_dims/$file_prefix.$file_type"
filepath_site="$dir_site/$file_prefix.$file_type"
# Debug
# echo "filepath_anno = $filepath_anno"
# echo "filepath_dims = $filepath_dims"
# echo "filepath_site = $filepath_site"

# Report
echo "      "
echo "-----------------------------------------------------------------------------------------"
echo "------      Begin img-publish script    --------"
echo "Begin img-publish optimization for $filepath_src"

if [ -e "$filepath_anno" ] && ((backup_anno == 1)); then
    echo "      "
    echo "------      Backing Up Anno File    --------"
    mkdir -p "$dir_anno/backup"
    rsync -avrp "$filepath_anno" "$dir_anno/backup/$file_prefix.$file_type"
fi

# dir_target="$dir_ifm/$dir_output/assets/$dir_img"
dir_target="$dir_site"

filepath_src="$dir_anno/$file_prefix.$file_type"
filepath_ifm="$dir_ifm/$file_prefix.$file_type"


# echo "      "

if ((overide_write_all == 1)); then
    echo "------      overide_write_all is ACTIVE Confirm with 1   --------"
    read -p 'Replace all files? check_write_all = ' check_write_all
    if ((check_write_all != 1)); then
        echo "check_write_all != 1. EXITING!"
        exit 1
    fi
    overide_write_anno=1
    overide_write_dims=1
    overide_write_site=1
    overide_write_vue=1
# elif ((overide_write_all == 0)); then
#     overide_write_anno=0
#     overide_write_dims=0
#     overide_write_site=0
#     overide_write_vue=0
fi



echo "      "
echo "------      Reporting Options    --------"
#
echo "overide_write_all  = $overide_write_all  (1 = File Replacement)"
echo "    overide_write_anno = $overide_write_anno (1 = File Replacement)"
echo "    overide_write_dims = $overide_write_dims (1 = File Replacement)"
echo "    overide_write_site = $overide_write_site (1 = File Replacement)"
echo "    overide_write_vue = $overide_write_vue (1 = File Replacement)"
# Report Byte Overide
if ((overide_byte == 0)); then
    echo "overide_byte = $overide_byte - No Max Filesize (default)"
elif ((overide_byte == 1)); then
    echo "overide_byte = $overide_byte - Max Byte Size of byte_max = $byte_max"
fi
if ((overide_cols == 0)); then
    echo "overide_cols = $overide_cols - No Max Colors"
elif ((overide_cols == 1)); then
    echo "overide_cols = $overide_cols - Max Num Colors of max_colors = $max_colors (default)"
fi
# Report Dimensions Overide
if ((overide_dims == 0)) && [ ! -e "$filepath_dims" ]; then
    echo "overide_dims = $overide_dims - No max Dims"
elif ((overide_dims == 0)) && [ -e "$filepath_dims" ]; then
    echo "overide_dims = $overide_dims - Using Max Dims from previous file (default)"
elif ((overide_dims == 1)); then
    echo "overide_dims = $overide_dims - Overide Max Dims to max_wide = $max_wide and max_tall = $max_tall"
fi
# Report Target File
if ((send_to_vue == 1)); then
    echo "      "
    echo "------      Syncing to VueBook!    --------"
    echo "dir_ifm = $dir_ifm"
    echo "filepath_ifm = $filepath_ifm"
    if [ -e  "$filepath_ifm" ] && ((overide_write_vue == 0)); then
        echo "      "
        echo "------      File Exsists in filepath_ifm. Set overide_write_vue = 1 to Replace    --------"
        read -p 'overide_write_vue = ' overide_write_vue
        if ((overide_write_vue == 1)); then
            send_to_vue=2
        else
            send_to_vue=0
        fi
    else
        echo "NO VUEBOOK FILE. Making Dir."
        mkdir -p "$dir_ifm"
        send_to_vue=2 # Syncing.
    fi
fi

if ((overide_write_dims == 0)) && [ -e "$filepath_dims" ]; then
    echo "      "
    echo "------    File Exists in filepath_dims Set overide_write_dims = 1?  --------"
    read -p 'Set overide_write_dims = ' overide_write_dims
elif [ ! -e "$filepath_dims" ]; then
    echo "No file in dims. Setting overide_write_dims = 1"
    overide_write_dims=1
fi

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



check_crop_to_anno=0
if (( overide_crop == 1 )) && [ -e "$filepath_crop" ]; then
    echo "      "
    echo "------      Transfer Crop to Anno? 0 = no, 1 = yes, 2 = only this  --------"
    read -p 'Set check_crop_to_anno = ' check_crop_to_anno
    if [ -e "$filepath_anno" ] && ((overide_write_anno == 0)); then
        echo "      "
        echo "------    File Exists in filepath_anno Set overide_write_anno = 1?  --------"
        read -p 'Set overide_write_anno = ' overide_write_anno
    elif [ ! -e "$filepath_anno" ]; then
        overide_write_anno=1
    fi
fi

# Transfer from crop to anno if requested
if ((overide_write_anno == 0)) && ((check_crop_to_anno == 0)); then
    echo " No transfer from crop. "
elif ((overide_write_anno == 1)) && ((check_crop_to_anno == 1)); then
    echo "Transfer crop to anno and continue "
    rsync -arpv "$filepath_crop" "$filepath_anno"
elif ((overide_write_anno == 1)) && ((check_crop_to_anno == 2)); then
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
# elif [ -e "$filepath_out" ] && (( overide_write_all == 0 )); then
#     echo "FILE OUTPUT EXISTS AND overide_write_all = ${overide_write_all}. EXITING."
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
# if ((overide_write_all == 1)); then
    # overide_dims=1
# else
    # overide_dims=0
# fi
# Get input if file exists in anno
if ((overide_write_dims == 0)) && [ -e "$filepath_anno" ]; then
    if [ -e "$filepath_dims" ]; then
        echo "      "
        echo "------    File Exists in filepath_dims Set overide_write_dims = 1?  --------"
        read -p 'Set overide_write_dims = ' overide_write_dims
    elif [ ! -e "$filepath_dims" ]; then
        echo "No file in dims. Setting overide_write_dims = 1"
        overide_write_dims=1
    fi
    if ((overide_write_dims != 1)); then
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
    if ((overide_dims == 0)); then
        echo "Using Dimensions in from Previous File $filepath_dims"
        # Dimensions in pixels
        max_wide="$dims_wide"
        max_tall="$dims_tall"
        echo "max_wide = $max_wide    and    max_tall = $max_tall"
        # echo "max_tall: $max_tall"
        overide_dims=0
    fi
elif ((overide_dims == 1)); then
    echo "Applying image resize overide"
    echo "max_wide = $max_wide    and    max_tall = $max_tall"
fi

# Apply Dimension Scaling if needed
echo "      "
echo "------      Apply Image Dimensions?   ------  "
echo "      "
# Apply Image Sizing
if (( overide_dims == 1 )) && (( src_wide > $max_wide || src_tall > $max_tall )); then
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

# Get input if file exists in anno
if ((overide_write_site == 0)) && [ -e "$filepath_dims" ]; then
    if [ -e "$filepath_site" ]; then
        echo "      "
        echo "------    File Exists in filepath_site Set overide_write_site = 1?  --------"
        read -p 'Set overide_write_site = ' overide_write_site
    elif [ ! -e "$filepath_site" ]; then
        overide_write_site=1
    fi
fi
# Abort?
if ((overide_write_site != 1)); then
    echo "------    No Write Overide for filepath_site Exiting!  --------"
    echo "      "
    exit 1
fi


# Convert Colors if above max_colors
colors_src=$(identify -format "%k" "$filepath_src")
# Check if colors_src is above 256
if (($colors_src > $max_colors)) & (( overide_cols == 1 )); then
    echo "------      Yes! Converting Colors      --------  "
    echo "colors_src = $colors_src Convert to ${max_colors}"
    # Convert with 256 colors
    convert "$filepath_src" -colors $max_colors "$filepath_site"
elif (($colors_src > $max_colors)) & (( overide_cols != 1 )); then
    echo "------     No color overide     --------  "
    rsync -avrp "$filepath_src" "$filepath_site"
else
    echo "------      No, Colors at min      --------  "
    echo "Number of colors is ${max_colors} or less. No need to convert."
    rsync -avrp "$filepath_src" "$filepath_site"
fi


file_byte=$(stat -f %z "$filepath_ifm")
if ((file_byte > byte_max)) && (( overide_byte == 0 )) && ((send_to_vue == 2)); then
   echo "file_byte = $file_byte and is above byte_max of $byte_max and overide_byte = $overide_byte"
   echo "Set overide_byte to 1?"
   read -p 'Transfer file anyway? Enter 2 send_to_vue = ' send_to_vue
fi


echo "$overide_byte"
echo "$filepath_site"

if (( send_to_vue == 2 )); then
    echo "      "
    echo "-------    Syncing to VueBok    ---------   "
    rsync -aprv "$filepath_site" "$filepath_ifm"
fi




echo "      "
echo "-------    Script Completed!    ---------   "
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