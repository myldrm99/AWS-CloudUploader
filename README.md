# AWS-CloudUploader

AWS CloudUploader is a simple command-line tool written in Bash for uploading and removing files from Amazon S3 buckets. It provides a convenient way to interact with your S3 storage directly from the terminal.

## INSTALLATION
How to install and configure the CloudUploader CLI Tool;

* Clone the repository
  
```
git clone https://github.com/myldrm99/AWS-CloudUploader
```

* Navigate to the tool directory on your machine
  
```
cd AWS-CloudUploader
```

* Add execute permissions to the script file

```
chmod +x install_awsclouduploader.sh
```

* Run the installation script
  
```
sudo ./install_awsclouduploader.sh
```

* Set your AWS credentials and configuration
  
```
export AWS_ACCESS_KEY_ID="your_access_key_id"
export AWS_SECRET_ACCESS_KEY="your_secret_access_key"
export AWS_DEFAULT_REGION="your_default_region"
export S3_BUCKET="your_bucket_name"
```

## Example Usage

* To upload a file
```
awsclouduploader.sh  -add /path/to/your/file.txt
```

* To remove a file

```
awsclouduploader.sh  -rm /path/to/your/file.txt
```
