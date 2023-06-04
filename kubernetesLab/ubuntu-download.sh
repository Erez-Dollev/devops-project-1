#!/bin/bash

URL="https://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-live-server-amd64.iso"
OUTPUT_FILE="ubuntu-22.04.2-live-server-amd64.iso"

# Function to log messages
log() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1"
}

# Function to handle errors
handle_error() {
    log "ERROR: $1"
    exit 1
}

# Download the file
log "Downloading Ubuntu ISO..."
wget "$URL" -O "$OUTPUT_FILE" || handle_error "Failed to download Ubuntu ISO."

log "Ubuntu ISO downloaded successfully."
