#!/bin/bash







# --------------- Manual Steps  ------------
# Crop
# Resize

# --------------- Set Variables  ------------
# --------------- Assign Source File  ------------
filepath_src="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-02-fluidics/assets/img-02p01-preflight/ifm-startup-house-air-open.png"
# --------------- Set Max Image Dims  ------------
max_tall=600
max_wide=600
# --------------- Set Max image Colors  ------------
max_colors=256

# --------------- Begin Automation  ------------
echo -e "\n > Running easyimg on $filepath_src"
# # Check if the filename starts with "imh-" or "ifm-"
# if [[ "${filepath_src:0:4}" == "imh-" ]]; then
#     # Replace "imh-" with "img-"
#     filepath_out="img-${filepath_src:4}"
# elif [[ "${filepath_src:0:4}" == "ifm-" ]]; then
#     # Replace "ifm-" with "img-"
#     filepath_out="img-${filepath_src:4}"
# else
#     # Use the original filename
#     filepath_out="${filepath_src##*/}"
# fi

# echo "Modified file path: $filepath_out"

# Set the destination file path with ".png" extension
filepath_out="${filepath_src%.*}.png"

echo -e "\n > Filepath out: $filepath_out"

# --------------- Convert to PNG  ------------
# Check if the source file already ends with ".png"
if [[ "$filepath_src" == *.png ]]; then
    # File is .png no conversion
    echo -e "\n > Source file is already in PNG format. Skipping conversion."
else
    # File is NOT .png Converting
    echo -e "\n > Converting image to PNG with sips..."
    echo -e "\n > Converting $filepath_src"
    echo -e "\n > Sending output to $filepath_out"
    # Convert Command
    sips -s format png "$filepath_src" --out "$filepath_out"
    # Report
    echo -e "\n > Conversion completed."
fi


# --------------- Update filepath_src  ------------
filepath_src="$filepath_out"

# --------------- Adjust Dims  ------------
echo -e "\n > Adjust Dimentions with: convert"

# Get source dims
src_wide=$(identify -format "%w" $filepath_src)
src_tall=$(identify -format "%h" $filepath_src)
# Report
echo -e "\n > src_wide = $src_wide    and    src_tall = $src_tall"
echo -e "\n > smax_wide = $max_wide    and    max_tall = $max_tall"
# Calculate scaling factor
# If Image is taller than wide, then use max_tall
if (( src_tall > src_wide)) && (( src_tall > max_tall )); then
    echo -e "\n > Scaling based on max_tall because image is hamburger"
    scale_factor="x$max_tall"
# If Image is Wide, use max_wide
elif (( src_wide > src_tall )) && (( src_wide > max_wide )); then
    echo -e "\n > Scaling based on max_wide because image is hotdog"
    scale_factor="$max_wide"
else
    scale_factor=""
fi
# Convert if src dims are too large
if [ -n "$scale_factor" ]; then
    convert "$filepath_src" -resize "$scale_factor" "$filepath_out"
else
    echo -e "\n > scale_factor is empty. Skipping conversion."
fi

# ---------------  Reduce Colors ------------
echo -e "\n > Reduce Colors with: convert"
convert "$filepath_src" -colors "$max_colors" "$filepath_src"

echo -e "\n > easyimg completed on $filepath_src\n"