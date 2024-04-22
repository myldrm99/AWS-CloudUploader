#!/bin/bash

# Read AWS credentials and configuration from environment variables or use defaults
AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID"
AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY"
AWS_DEFAULT_REGION="$AWS_DEFAULT_REGION"
S3_BUCKET="$S3_BUCKET"

# Check for required options
if [ -z "$AWS_ACCESS_KEY_ID" ] || [ -z "$AWS_SECRET_ACCESS_KEY" ] || [ -z "$AWS_DEFAULT_REGION" ] || [ -z "$S3_BUCKET" ]; then
    echo "AWS credentials and configuration not set. Please configure the script with your AWS details."
    exit 1
fi

#parse command-line arguments
filename="$1"
target_directory="$2"
storage_class="$3"

#check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Upload the file to S3
aws s3 cp "$filename" "s3://$S3_BUCKET/$target_directory"

# Provide feedback on the upload status
if [ $? -eq 0 ]; then
    echo "Upload successful!"
else
    echo "Error: Upload failed."
fi
