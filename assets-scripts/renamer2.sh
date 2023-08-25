#!/bin/bash



dir_src=$(pwd)
dir_out="$dir_src/dir_fix"
mkdir -p $dir_out
echo $dir_src
echo $dir_out
for fullfile in "$dir_src"/*.mp4; do
  fname_orig=$(basename "$fullfile")
  filename_new=$(echo "$fname_orig" | sed "s/$filestring_old/$filestring_new/g")  
  # echo "$fname_orig"
  echo "$fullfile"
  # echo "$filename_new"
done

# filestring_old="ifm-startup-main-004-scope-457"

# filename_old="ifm-startup-main-004-scope-457"
# filestring_new="ifm-startup-main-004-scope-457-delay-set"

# # Make new filename


# echo "$filename_new"
# # Orig Dir
# filepath_old="$asset_new_dir/$asset_root_dir/$asset_orig_dir/$filename_old".*

# filepath_new="$asset_new_dir/$asset_root_dir/$asset_orig_dir/$filename_new.$filename_ext"
# mv "$filepath_old" "$filepath_new"

# # Crop Dir
# filepath_old="$asset_new_dir/$asset_root_dir/$asset_crop_dir/$filename_old.$filename_ext"
# filepath_new="$asset_new_dir/$asset_root_dir/$asset_crop_dir/$filename_new.$filename_ext"
# mv "$filepath_old" "$filepath_new"



