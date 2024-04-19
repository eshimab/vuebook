/#/bin/bash





# ---------------   ------------

# --------------- Manual Steps  ------------
# Crop
# Resize

# --------------- Convert to PNG  ------------
echo "Converting img to png with: sips\n"
filepath_src="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/IMG_2631.HEIC"
filepath_out="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/img-01p02-vacuum-in-box.png"
echo "converting $filepath_src"
echo "sending output to $filepath_out"
sips -s format png "$filepath_src" --out "$filepath_out"
# --------------- Update filepath_src  ------------
filepath_src="/Users/eshim/vuebook/docs/influx-flight-manual/ifm-01-startup/assets/img-01p02-system-power/img-01p02-vacuum-in-box.png"

# --------------- Adjust Dims  ------------
echo "Adjust Dimentions with: convert\n"
max_tall=600
max_wide=600
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

# ---------------  Reduce Colors ------------
echo "Reduce Colors with: convert"
convert "$filepath_src" -colors 256 "$filepath_src"