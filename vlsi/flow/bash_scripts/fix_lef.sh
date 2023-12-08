#!/bin/bash

# Check if three file names are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <input_filename> <output_filename> <prepend_filename>"
    exit 1
fi

# Input, output, and prepend files
INPUT_FILE="$1"
OUTPUT_FILE="$2"
PREPEND_FILE="$3"

# Check if the input and prepend files exist
if [ ! -f "$INPUT_FILE" ]; then
    echo "Input file not found: $INPUT_FILE"
    exit 1
fi

if [ ! -f "$PREPEND_FILE" ]; then
    echo "Prepend file not found: $PREPEND_FILE"
    exit 1
fi

# Create temporary files
TEMP_FILE=$(mktemp)
MODIFIED_PREPEND=$(mktemp)

# Process the input file and save the result to the temporary file
awk '/MACRO AND/,0' "$INPUT_FILE" > "$TEMP_FILE"

# Make the specified changes in the prepend file and save to another temporary file
awk '
    /LAYER M2/,/END M2/ {
        sub(/PITCH 0\.26 0\.26 ;/, "PITCH 0.326 0.326 ;")
    }
    /SITE  CoreSite/,/END  CoreSite/ {
        sub(/SIZE        0\.260 BY 5\.46 ;/, "SIZE        0.326 BY 4.238 ;")
    }
    /SITE  Core/,/END  Core/ {
        sub(/SIZE        0\.260 BY 5\.46 ;/, "SIZE        0.326 BY 4.238 ;")
    }
    { print }
' "$PREPEND_FILE" > "$MODIFIED_PREPEND"

# Combine the modified prepend file and temporary file into the output file
cat "$MODIFIED_PREPEND" "$TEMP_FILE" > "$OUTPUT_FILE"

# Clean up temporary files
rm "$TEMP_FILE" "$MODIFIED_PREPEND"
