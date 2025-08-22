#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Identified operating system as MacOS."
    echo ""
    export OS="MacOS"
    export FONT_INSTALLATION_DIRECTORY="/Library/Fonts"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Identified operating system as Linux."
    echo ""
    export OS="Linux"
    export FONT_INSTALLATION_DIRECTORY="/usr/share/fonts/truetype"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "Identified operating system as Windows."
    echo ""
    export OS="Windows"
    export FONT_INSTALLATION_DIRECTORY="/mnt/c/Windows/Fonts"
else
    export OS="Unsupported"
fi
