#!/bin/bash

echo ""
echo "┓ •             ┓
┃ ┓┓┏┏┓┏┓┏┳┓┏┓┏┓┃┏
┗┛┃┗┻┛┗┗┫┛┗┗┗┻┛ ┛┗
  ┛     ┛"
echo ""

source "./scripts/utility/colors.sh"
source "./scripts/utility/system.sh"

if [[ "$DOTFILES_OS" == "Unsupported" ]]; then
    echo -e "${COLOR_TEXT_RED}Aborting: Unsupported operating system: $OSTYPE${COLOR_RESET}"
    echo ""
    exit 1
fi

bash "./scripts/typefaces.sh"

echo ""
echo -e "${COLOR_TEXT_GREEN}Installation script completed.${COLOR_RESET}"
echo ""
