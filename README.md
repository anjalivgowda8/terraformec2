# 🚀 Terraform EC2 Deployment Project

This project provisions an AWS EC2 instance using Terraform in a simple and modular way.

---

## 📁 Project Structure


terraform-ec2/
├── provider.tf
├── variables.tf
├── main.tf
├── outputs.tf
└── terraform.tfvars


---

## ⚙️ What This Project Does

- Creates an EC2 instance in AWS
- Uses an existing Key Pair for SSH access
- Assigns a subnet and security group
- Automatically assigns a public IP
- Outputs instance ID, public IP, and DNS

---

## 🧾 File Descriptions

### 🔹 provider.tf
Defines AWS provider and region configuration.

### 🔹 variables.tf
Declares all input variables used in the project.

### 🔹 main.tf
Contains EC2 instance resource definition.

### 🔹 outputs.tf
Displays important information after deployment:
- Instance ID
- Public IP
- Public DNS

### 🔹 terraform.tfvars
Stores all actual values like:
- AWS region
- AMI ID
- Key pair name
- Subnet ID
- Security group ID

---

## 📌 Prerequisites

Before running this project, ensure:

### 1. Install Terraform
```bash
terraform -version
2. Install AWS CLI
aws configure

Provide:

AWS Access Key
AWS Secret Key
Default region
Output format
🚀 How to Use
Step 1: Initialize Terraform
terraform init
Step 2: Validate configuration
terraform validate
Step 3: Preview changes
terraform plan
Step 4: Deploy infrastructure
terraform apply

Type:

yes
🔐 SSH into EC2 Instance

After deployment:

ssh -i ~/.aws/awss-key.pem ec2-user@<public-ip>
📤 Outputs You Will Get
EC2 Instance ID
Public IP Address
Public DNS Name
⚠️ Important Notes
Do NOT hardcode values in .tf files
Always manage configuration using terraform.tfvars
Keep .pem key file secure
Ensure security group allows SSH (port 22)
🧹 Destroy Infrastructure

To delete everything created:

terraform destroy
👨‍💻 Author

Terraform EC2 Practice Project



# terraformec2
