#!/bin/bash











# Set Directory
asset_new_dir="/Users/eshim/vuebook/assets-new"
asset_root_dir="ifm-icon-examples"
# asset_crop_dir="$asset_root_dir-crop"
asset_orig_dir="$asset_root_dir-orig"

# Set file params
filename_ext="JPG"

filepath="$asset_new_dir/$asset_root_dir/$asset_orig_dir"
filelist="$filepath"/*."$filename_ext"

for filepath_old in $filelist; do
  # Get basename filename
  filestring=$(basename "$filepath_old")
  # Get filepath directory
  filepath_dir="${filepath_old%/*}"
  # Make png filename
  filename_png="${filestring%.*}.png"
  # Make new png filepath
  filepath_new="$filepath_dir/$filename_png"
  # Report?
  # echo "----"
  # echo "Old filepath: $filepath_old"
  # echo "New filepath: $filepath_new"
  # Convert
  sips -s format png "$filepath_old" --out "$filepath_new"
  # Remove?
  rm "$filepath_old"
done