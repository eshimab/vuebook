#!/bin/bash











# Set Directory
asset_new_dir="/Users/eshim/vuebook/assets-new"
asset_root_dir="ifm-startup-main-01"
# asset_crop_dir="$asset_root_dir-crop"
asset_orig_dir="$asset_root_dir-orig"
asset_crop_dir="$asset_root_dir-crop"
asset_heic_dir="$asset_root_dir-heic"

# Set file params
# filename_ext="HEIC"

filestring_old="ifm-startup-main-004-scope-457"

filename_old="ifm-startup-main-004-scope-457"
filestring_new="ifm-startup-main-004-scope-457-delay-set"

# Make new filename
filename_new=$(echo "$filename_old" | sed "s/$filestring_old/$filestring_new/g")

echo "$filename_new"
# Orig Dir
filepath_old="$asset_new_dir/$asset_root_dir/$asset_orig_dir/$filename_old".*

filepath_new="$asset_new_dir/$asset_root_dir/$asset_orig_dir/$filename_new.$filename_ext"
mv "$filepath_old" "$filepath_new"

# Crop Dir
filepath_old="$asset_new_dir/$asset_root_dir/$asset_crop_dir/$filename_old.$filename_ext"
filepath_new="$asset_new_dir/$asset_root_dir/$asset_crop_dir/$filename_new.$filename_ext"
mv "$filepath_old" "$filepath_new"



