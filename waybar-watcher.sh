#!/usr/bin/env bash

# Directory to watch
CONFIG_DIR="$HOME/.config/waybar"

# Ensure inotify-tools is installed
if ! command -v inotifywait &> /dev/null; then
    echo "Error: inotifywait is not installed. Install 'inotify-tools' first."
    exit 1
fi

# Initial reload to be safe
killall -SIGUSR2 waybar 2>/dev/null

# Watch for modifications, creations, or deletions in ~/.config/waybar
while inotifywait -e modify,create,delete,move -r "$CONFIG_DIR" 2>/dev/null; do
    echo "Changes detected in $CONFIG_DIR. Reloading Waybar..."
    killall -SIGUSR2 waybar
done
