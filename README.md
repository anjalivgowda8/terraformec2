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

## Resources Created

### 1. EC2 Instance
- AMI-based Ubuntu instance
- Instance type configurable via variables
- Public IP enabled
- Attached to custom security group
- Docker installed at boot using user-data

### 2. Security Group

Managed by Terraform and attached to EC2 instance.

#### Inbound Rules

| Type  | Protocol | Port | Source        |
|------|----------|------|--------------|
| SSH  | TCP      | 22   | 0.0.0.0/0    |
| HTTP | TCP      | 80   | 0.0.0.0/0    |

#### Outbound Rules

| Type | Protocol | Port | Destination |
|------|----------|------|-------------|
| ALL  | ALL      | ALL  | 0.0.0.0/0   |

---

## Variables

Defined in `variables.tf` and configured via `terraform.tfvars`.

| Variable        | Description                | Type   |
|----------------|----------------------------|--------|
| aws_region     | AWS region                 | string |
| instance_type  | EC2 instance type         | string |
| ami_id         | AMI ID for EC2            | string |
| key_name       | AWS key pair name         | string |
| subnet_id      | Subnet ID                 | string |

---

## User Data Script

Docker is installed automatically when the EC2 instance launches.

```bash
#!/bin/bash
apt update -y
apt install -y docker.io git
systemctl start docker
systemctl enable docker
usermod -aG docker ubuntu
```
```
Deployment Steps
1. Initialize Terraform
terraform init
2. Validate configuration
terraform validate
3. Review execution plan
terraform plan
4. Apply infrastructure
terraform apply -auto-approve
```