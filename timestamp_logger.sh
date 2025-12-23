#!/bin/bash

# Output file
LOG_FILE="logs"

# Clear old logs if file exists
> "$LOG_FILE"

# Loop through files in current directory
for file in *; do
    if [ -f "$file" ]; then
        echo "$(stat -c '%n | Last Modified: %y' "$file")" >> "$LOG_FILE"
    fi
done

echo "Timestamps logged successfully into file: $LOG_FILE"

