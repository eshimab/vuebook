#!/bin/bash

# Directory to search (use "." for current directory)
search_dir="."

# Use find to locate all directories and files matching the pattern
find "$search_dir" -depth -name "flight-01-begin*" | while read -r old_name; do
    # Construct new name by replacing the initial part of the filename
    new_name="$(echo "$old_name" | sed 's/flight-01-begin/flight-man-01/')"

    # Move (rename) the old file/directory to the new name
    mv "$old_name" "$new_name"
    echo "Renamed '$old_name' to '$new_name'"
done
