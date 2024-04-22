#!/bin/bash

# Set the installation directory
INSTALL_DIR="/usr/local/bin"

# Specify the name of your CloudUploader script
CLOUD_UPLOADER_SCRIPT="awsclouduploader.sh"

# Check if the installation directory exists
if [ ! -d "$INSTALL_DIR" ]; then
    echo "Error: Installation directory $INSTALL_DIR does not exist."
    exit 1
fi

# Check if the CloudUploader script exists
if [ ! -f "$CLOUD_UPLOADER_SCRIPT" ]; then
    echo "Error: CloudUploader script '$CLOUD_UPLOADER_SCRIPT' not found."
    exit 1
fi

# Copy the CloudUploader script to the installation directory
cp "$CLOUD_UPLOADER_SCRIPT" "$INSTALL_DIR"

# Provide execute permissions
chmod +x "$INSTALL_DIR/$CLOUD_UPLOADER_SCRIPT"

# Check if the copy operation was successful
if [ $? -eq 0 ]; then
    echo "CloudUploader is now installed in $INSTALL_DIR."
    echo "You can use it by running '$CLOUD_UPLOADER_SCRIPT'."
else
    echo "Error: Failed to install CloudUploader."
fi
