#!/bin/bash










# ------------------ CONVERTING HEIC
# /Users/username/vuebook/assets-scripts
input_dir=$(pwd) # Get PWD
# Create Dir for original images

# -------- Create the sync dir in vuebook/assets-oversized/
# Extract the relevant parts of the current directory
# /Users/username
home_dir=$(echo "$input_dir" | cut -d'/' -f1-3)
download_dir="$home_dir/Downloads"
echo $home_dir
echo $download_dir
# The /Users/username/vuebook part
project_dir=$(echo "$input_dir" | cut -d'/' -f1-4)
# The /Users/username/vuebook/assets-new
assets_new_dir="$project_dir/assets-new"
assets_new_heic_dir="$project_dir/assets-new/heic"
mkdir -p "${assets_new_dir}"
mkdir -p "${assets_new_heic_dir}"

# Import .HEIC to ignored folder
download_files_heic_big="${download_dir}/*.HEIC"
rsync --archive --progress --recursive --verbose $download_files_heic_big $assets_new_heic_dir
# Import .heic to ignored folder
# download_files_heic_sml="${download_dir}/*.heic"
# rsync --archive --progress --recursive --verbose $download_files_heic_sml $assets_new_heic_dir

# Permanent Deletion.
# rm $download_files_heic_big
# rm $download_files_heic_sml