#!/bin/bash







# Shorter file prefix to search for
short_prefix="ifm-startup-main-t1"
dir_ifm="influx-flight/flight-sorties/assets/img-drop166"
# Dimensions in pixels
max_wide=600
max_tall=600
overide_dims=1

# Directory containing the files
dir_base="/Users/eshim/vuebook"

dir_target="$dir_base/docs/$dir_ifm"
dir_backup="$dir_base/assets-oversized/docs/$dir_ifm"
echo "      "
echo "------      MAKE BACKUP DIR IN   ------  "
echo "dir_backup = $dir_backup"
mkdir -p "$dir_backup"
rsync -avrp "$dir_target"/"$short_prefix"* "$dir_backup/"


# Iterate through files in the directory
for filepath_src in "$dir_target"/*; do
    echo "      "
    echo "------      Begin Loop   ------  "
    echo "filepath_src = $filepath_src"
    # Check if the file name starts with the specified prefix
    if [[ "$filepath_src" == "$dir_target/$short_prefix"* ]]; then
        # Extract the full file prefix from the file name
        full_prefix=$(basename "$filepath_src" | cut -d- -f1-3)
        # Run img-publish.sh script for this file

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
        if [ -e "$filepath_src" ]; then
            dims_wide=$(identify -format "%w" $filepath_src)
            dims_tall=$(identify -format "%h" $filepath_src)
            # echo "Dims Wide: $dims_wide"
            # echo "Dims Tall: $dims_tall"
            if ((overide_dims == 0)); then
                echo "Using Dimensions in from Previous File $filepath_src"
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
            convert "$filepath_src" -resize "$scale_factor" "$filepath_src"
            echo "Image Scaled and sent to $filepath_src"
        else
            echo "------  No. Dimensions unchanged.  ------  "
            # rsync -arpv "$filepath_src" "$filepath_src"
        fi
    fi
done
