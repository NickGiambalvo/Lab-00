# Checks if a filename was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <output_filename>"
    exit 1
fi

OUTPUT_FILE="$1"

# If the file exists, clear it. If not, create it.
> "$OUTPUT_FILE"

# Loops through all files in the current directory
for file in *; do
    if [ -f "$file" ]; then
        echo "$file" >> "$OUTPUT_FILE"
    fi
done

# Displays the contents of the file
echo "Contents of $OUTPUT_FILE:"
cat "$OUTPUT_FILE"
