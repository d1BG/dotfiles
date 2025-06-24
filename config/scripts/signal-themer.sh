#!/bin/bash
FLAVOR="mocha"

# Define other variables
TEMP=$(mktemp -d)
SIGNAL_DIR="/usr/lib/signal-desktop/resources"

# Create the stylesheets directory
mkdir -p "${TEMP}/stylesheets"

# Extract the Signal app.asar file
asar e "${SIGNAL_DIR}/app.asar" "${TEMP}"
echo "Listing extracted files:"
find "${TEMP}" -type f

# Download the Catppuccin theme CSS for the chosen flavor
curl -o "${TEMP}/stylesheets/catppuccin-${FLAVOR}.css" "https://raw.githubusercontent.com/CalfMoon/signal-desktop/refs/heads/main/themes/catppuccin-${FLAVOR}.css"

# Wait cuz apparently if it's instant it fucking borks? it's still borked though.
sleep 2

# Modify the manifest.css to include the new theme
sed -i "1i @import \"catppuccin-${FLAVOR}.css\";" "${TEMP}/stylesheets/manifest.css"

# Repack the app.asar file with the modifications
sudo asar p "${TEMP}" "${SIGNAL_DIR}/app.asar"

# Restart Signal in the background
echo "Signal has been themed with Catppuccin ${FLAVOR}! Restart Signal to apply theme"
