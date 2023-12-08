#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <spice_file>"
  exit 1
fi

spice_file="$1"

# Perform the replacements using sed
sed -i -E 's/VDD!/VDD/g' "$spice_file"
sed -i -E 's/GND!/VSS/g' "$spice_file"
sed -i -E 's/(_)?(VDD|GND)!(_[A-Za-z0-9_]+)?/\2\3/g' "$spice_file"

echo "Replacements complete."
