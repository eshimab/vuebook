#!/bin/bash

# Directory to search for duplicates
base_dir="/Volumes/toshidat/media/movies"
# Output file for duplicate filenames and sizes
output_filename="duplicate_movie_files.txt"
output_fullfile="$base_dir/$output_filename"
# Initialize an associative array to store file sizes
declare -A file_sizes
# Initialize a variable to store total wasted space
total_wasted_space=0
# Iterate through each file in the directory
for file_path in $base_dir/*/*.avi; do
    echo "Checking: $file_path"
    # Get the file name without the path
    file_name=$(basename "$file_path")
    # Get the file size
    file_size=$(stat -f %z "$file_path")
    # Check if this file size is already in the array
    if [ "${file_sizes[$file_size]}" ]; then
        # Print duplicate filenames to the output file
        echo "Duplicate: $file_name, Size: ${file_size} bytes" >> "$output_fullfile"
        # Add to the total wasted space
        total_wasted_space=$((total_wasted_space + file_size))
    else
        # Add the file size to the array
        file_sizes[$file_size]=$file_name
    fi
done

wasted_space_readable=$(echo "scale=2; $total_wasted_space / 1024" | bc)
suffix="KiB"

if (( $(echo "$wasted_space_readable >= 1024" | bc -l) )); then
    wasted_space_readable=$(echo "scale=2; $wasted_space_readable / 1024" | bc)
    suffix="MiB"
fi

if (( $(echo "$wasted_space_readable >= 1024" | bc -l) )); then
    wasted_space_readable=$(echo "scale=2; $wasted_space_readable / 1024" | bc)
    suffix="GiB"
fi

echo "Total wasted space due to duplicates: $wasted_space_readable $suffix" >> "$output_fullfile"



