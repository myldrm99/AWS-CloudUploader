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

# Parse command-line arguments
command="$1"
filename="$2"

# Define functions for adding and removing files
add_file() {
    target_directory="$3"
    # Check if the file exists
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
}

remove_file() {
    # Extract filename from the full path
    filename=$(basename "$filename")
    # Check if the file exists in the S3 bucket
    if ! aws s3 ls "s3://$S3_BUCKET/$filename" &>/dev/null; then
        echo "Error: File '$filename' not found in the S3 bucket."
        exit 1
    fi
    # Delete the file from S3
    aws s3 rm "s3://$S3_BUCKET/$filename"

    # Provide feedback on the removal status
    if [ $? -eq 0 ]; then
        echo "File removed successfully!"
    else
        echo "Error: Failed to remove file."
    fi
}

# Execute the appropriate function based on the command
case "$command" in
    -add)
        add_file "$@"
        ;;
    -rm)
        remove_file
        ;;
    *)
        echo "Usage: $0 {-add|-rm} /path/to/your/file.txt [target_directory]"
        exit 1
        ;;
esac
