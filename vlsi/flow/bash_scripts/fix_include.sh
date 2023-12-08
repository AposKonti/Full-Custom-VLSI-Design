#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <file_path> <WORD1>"
  exit 1
fi

file_path="$1"
WORD1="$2"

# Perform the replacements using sed
sed -i -E "s|\.include \".*/($WORD1/)?($WORD1_lvs/)?$WORD1\.pex\.sp\.($WORD1\.)?pex\"|\.include \"$WORD1\.pex\.sp\.pex\"|g" "$file_path"
sed -i -E "s|\.include \".*/($WORD1/)?($WORD1_lvs/)?$WORD1\.pex\.sp\.($WORD1\.)?pxi\"|\.include \"$WORD1\.pex\.sp\.$WORD1\.pxi\"|g" "$file_path"

echo "Replacements complete."
