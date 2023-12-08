#!/bin/bash

# Define the input file
input_file=$1

# Define the output file
output_file=$2

# Use sed to perform the replacement and save it to the output file
sed 's/op_cond/axk220238_axk230133/g' "$input_file" |
sed '/pin(VDD)/,/^    }/d' | # Remove pin(VDD) block
sed '/pin(VSS)/,/^    }/d' >> "$output_file" # Remove pin(VSS) block

echo "Replacement complete. Output saved to $output_file"
