#!/bin/bash








# Set Directory
asset_new_dir="/Users/eshim/vuebook/assets-new"
asset_root_dir="photoline"
# asset_crop_dir="$asset_root_dir-crop"
asset_orig_dir="$asset_root_dir-orig"

filestring_old="ifm-startup-main-9"
filestring_new="ifm-startup-main-09"
# Set file params
# filename_ext="HEIC"

filepath="$asset_new_dir/$asset_root_dir/$asset_orig_dir"
# filelist="$filepath"/*"$filename_ext"
filelist="$filepath/$filestrind_old"*

for filepath_old in $filelist; do
  # Get basename
  filename_old=$(basename "$filepath_old")
  # Make png filename
  # filename_png="${filestring%.*}.png"
  # Perform String Replacement
  filename_new=$(echo "$filename_old" | sed "s/$filestring_old/$filestring_new/g")
  # Make new png filepath
  filepath_new="$filepath/$filename_new"
  # Report?
  # echo " --- "
  # echo "Old filepath: $filepath_old"
  # echo "New filepath: $filepath_new"
  mv "$filepath_old" "$filepath_new"
  # echo "$creation_time"
  
  # Remove?
  # rm "$filepath_old"
done