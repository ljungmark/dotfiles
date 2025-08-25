#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Identified operating system as MacOS."
    echo ""
    export OS="MacOS"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Identified operating system as Linux."
    echo ""
    export OS="Linux"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    echo "Identified operating system as Windows."
    echo ""
    export OS="Windows"
else
    export OS="Unsupported"
fi
