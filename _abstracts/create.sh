#!/bin/bash

# Ask the user for the title
echo "Enter the title of the abstract:"
read title

# Remove any newlines and trim leading/trailing spaces
title=$(echo "$title" | tr -d '\n' | sed 's/^[ \t]*//;s/[ \t]*$//')

# Convert the title to a valid filename
filename=$(echo "$title" | tr -s '[:space:]' '_' | tr -cd '[:alnum:]_')

# Add the .markdown extension
filename="${filename}.markdown"

# Ask the user for the author
echo "Enter the author(s) of the abstract:"
read -r author

# Create the new file with the front matter
echo -e "---\ntitle: \"$title\"\nlayout: page\nauthor: \"$author\"\n---" > "$filename"

# Provide feedback
echo "Created file: $filename"
