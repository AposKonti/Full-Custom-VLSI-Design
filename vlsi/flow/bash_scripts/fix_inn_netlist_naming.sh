#!/bin/bash

# Check if a file name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <Verilog file>"
    exit 1
fi

# Input file
input_file=$1

# Process the file in place
# The sed command now replaces n<number> with m<number> everywhere in the file
sed -i -E 's/\bn([0-9]+)\b/m\1/g' "$input_file"

echo "File $input_file has been modified."
