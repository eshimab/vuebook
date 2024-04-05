#!/bin/bash









search_dir="/Users/eshim/FCM"
echo "search_dir = $search_dir"
# Ensure a search_dir is provided
# if [ "$main_dir" -ne 1 ]; then
#     echo "main_dir = $main_dir"
#     exit 1
# fi
# search_dir="$main_dir"
# Create a temporary file for storing md5 hashes
temp_file=$(mktemp)
echo ""
echo "Temporary file created at: $temp_file"
# Get total num of files for progress tracking
total_files=$(find "$search_dir" -type f | wc -l)
ticker_files=0
echo ""
echo "total_files = $total_files"

find "$search_dir" -type f -size -4G | while read -r file; do
    echo -n "Processed $ticker_files out of $total_files files\r"
    md5 -r "$file"
    ((ticker_files++))
done | sort > "$temp_file"
echo "Processed all $total_files files."

# Find all files in the search_dir, compute their md5sum and sort by the hash
# find "$search_dir" -type f -exec md5 -r {} + | sort > "$temp_file"
# Use uniq to detect and print duplicate hashes
awk 'BEGIN {lasthash = ""; lastfile = ""} 
     {
       if ($1 == lasthash) {
         print lastfile;
         print $2;
       } 
       lasthash = $1; lastfile = $2
     }' "$temp_file"

# Clean up the temporary file
mv "$temp_file" "$search_dir/listfile.txt"
