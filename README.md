# AWS-CloudUploader

## INSTALLATION
How to install and configure the CloudUploader CLI Tool;

* Clone this repository
  
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

* Configure the tool with your AWS credentials
  
```
export AWS_ACCESS_KEY_ID="your_access_key_id"
export AWS_SECRET_ACCESS_KEY="your_secret_access_key"
export AWS_DEFAULT_REGION="your_default_region"
export S3_BUCKET="your_bucket_name"
```

* Example Usage

```
awsclouduploader.sh  /path/to/your/file.txt
```
