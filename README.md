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
AWS_ACCESS_KEY_ID="your aws access key"
AWS_SECRET_ACCESS_KEY="your aws secret access key"
AWS_DEFAULT_REGION="your aws default region"
S3_BUCKET="your bucket name"
```

* Example Usage

```
awsclouduploader.sh  /path/to/your/file.txt
```
