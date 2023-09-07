#!/bin/bash






# Set the output file name
# Set the output file name
tree_dir="/Users/eshim/vuebook/assets-new"
output_dir="/Users/eshim/vuebook/assets-new"
output_file="treeout.md"
fullfile_out="$output_dir/$output_file"
temp_file="$output_dir/temp_tree.txt"

# Generate the new tree output
tree "$tree_dir" > "$temp_file"

# Check if the output file exists
if [ -e "$fullfile_out" ]; then
    # Replace the tree output under ### Tree Output header
    sed -i.bak '/### Tree Output/,/### Next Header/c\
\
### Tree Output\
\
'"$(cat "$temp_file")"'\
\
### Next Header' "$fullfile_out"
    echo "Tree output has been replaced."
else
    echo "Output file not found: $fullfile_out"
fi

# Remove the temporary file
rm "$temp_file"
