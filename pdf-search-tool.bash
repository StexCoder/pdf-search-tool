#!/bin/bash

# Check if correct number of arguments is passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <search_term>"
    exit 1
fi

DIRECTORY=$1
SEARCH_TERM=$2

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory $DIRECTORY does not exist."
    exit 1
fi

echo "Searching for '$SEARCH_TERM' in PDF files in directory: $DIRECTORY"

# Loop through all PDF files in the directory
for pdf_file in "$DIRECTORY"/*.pdf; do
    if [ -f "$pdf_file" ]; then
        # Convert PDF to text
        text=$(pdftotext "$pdf_file" -)
        
        # Search for the term in the text
        if echo "$text" | grep -q "$SEARCH_TERM"; then
            echo "Found in: $pdf_file"
        fi
    fi
done

echo "Search completed."
