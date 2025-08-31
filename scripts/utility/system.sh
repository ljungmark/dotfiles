#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Identified operating system as MacOS."
    echo ""
    export DOTFILES_OS="MacOS"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Identified operating system as Linux."
    echo ""
    export DOTFILES_OS="Linux"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "Identified operating system as Windows."
    echo ""
    export DOTFILES_OS="Windows"
else
    export DOTFILES_OS="Unsupported"
fi
