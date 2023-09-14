#!/bin/bash

# Set name for the temporary and final zip files
TEMP_ZIP="arduino-oled-icons_temp.zip"
FINAL_ZIP="arduino-oled-icons.zip"

# Delete any existing zip files with the same name
rm -f $TEMP_ZIP $FINAL_ZIP

# Change to the script's directory
cd "$(dirname "$0")"

# Create a temporary zip file with the files (excluding hidden files and the script itself)
zip -r $TEMP_ZIP LICENSE README.md icons iot_iconset_16x16.c iot_iconset_16x16.h

# Unzip the temporary zip to a folder with the desired top-level directory structure
unzip -d arduino-oled-icons $TEMP_ZIP

# Zip the resulting directory structure into the final zip file
zip -r $FINAL_ZIP arduino-oled-icons/

# Clean up temporary files and folders
rm -f $TEMP_ZIP
rm -rf arduino-oled-icons/

echo "Packaging completed."

