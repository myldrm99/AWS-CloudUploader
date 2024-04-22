#!/bin/bash

# Set the installation directory
INSTALL_DIR="/usr/local/bin"

# Copy the main script to the installation directory
cp awsclouduploader.sh $INSTALL_DIR

# Provide execute permissions
chmod +x $INSTALL_DIR/awsclouduploader.sh

echo "AWS CloudUploader is now installed."
echo "You can use it by running 'awsclouduploader.sh' ."
