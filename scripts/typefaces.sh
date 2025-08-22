#!/bin/bash

TYPEFACE_SOURCE="./assets/typefaces"
SEGMENT_COLOR=$COLOR_BACKGROUND_CYAN

echo -e "${SEGMENT_COLOR} T Y P E F A C E S ${COLOR_RESET}"

if [ ! -d "$TYPEFACE_SOURCE" ]; then
    echo -e "${SEGMENT_COLOR} ${COLOR_RESET} ${COLOR_TEXT_RED}Source directory does not exist: $TYPEFACE_SOURCE${COLOR_RESET}"
    exit 1
fi

# ===

file_count=0
for file in "$TYPEFACE_SOURCE"/*; do
    if [ -f "$file" ] && [[ "$file" == *.ttf ]]; then
        file_count=$((file_count + 1))
    fi
done

if [ $file_count -eq 0 ]; then
    echo -e "${SEGMENT_COLOR} ${COLOR_RESET} ${COLOR_TEXT_RED}No files found in $TYPEFACE_SOURCE${COLOR_RESET}"
elif [ $file_count -eq 1 ]; then
    echo -e "${SEGMENT_COLOR} ${COLOR_RESET} $file_count file found in $TYPEFACE_SOURCE"
else
    echo -e "${SEGMENT_COLOR} ${COLOR_RESET} $file_count files found in $TYPEFACE_SOURCE"
fi

# ===

installed_files=0
for file in "$TYPEFACE_SOURCE"/*; do
    if [ -f "$file" ] && [[ "$file" == *.ttf ]]; then
        filename=$(basename "$file")

        if [ -e "$FONT_INSTALLATION_DIRECTORY/$filename" ]; then
            echo -e "${SEGMENT_COLOR} ${COLOR_RESET} ${COLOR_TEXT_YELLOW}#${COLOR_RESET} Skipping $file; it already exists in $FONT_INSTALLATION_DIRECTORY"
        else
            echo -e "${SEGMENT_COLOR} ${COLOR_RESET} ${COLOR_TEXT_GREEN}+${COLOR_RESET} Installing $file to $FONT_INSTALLATION_DIRECTORY"
            sudo cp "$file" "$FONT_INSTALLATION_DIRECTORY"
            installed_files=$((installed_files + 1))
        fi
    fi
done

if [ $installed_files -eq 0 ]; then
    echo -e "${SEGMENT_COLOR} ${COLOR_RESET} No files installed from $TYPEFACE_SOURCE"
elif [ $installed_files -eq 1 ]; then
    echo -e "${SEGMENT_COLOR} ${COLOR_RESET} $installed_files file installed from $TYPEFACE_SOURCE"
else
    echo -e "${SEGMENT_COLOR} ${COLOR_RESET} $installed_files files installed from $TYPEFACE_SOURCE"
fi
