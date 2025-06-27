# 🚀 Resume Deployment on AWS

This project demonstrates automated CI/CD deployment of a resume website to AWS EC2 using GitHub Actions.

## 📁 Tech Stack
- HTML/CSS
- GitHub Actions (CI/CD)
- AWS EC2 (Ubuntu)
- Apache Web Server


## ⚙️ How it Works

1. Push code to the `main` branch
2. GitHub Actions connects to EC2 via SSH
3. Code is deployed to Apache web server
4. Resume is instantly live

## 🛠 Setup

### 1. Launch EC2 Instance
- Launch new instance:
- Name: Myresumedeployment
- AMI: Ubuntu 
- Instance Type: t2.micro (Free Tier)
- Key Pair: Create your-key.pem
- Allow HTTP (80) and SSH (22) in Security Group

### 2. Add GitHub Secrets
| Name | Description |
|------|-------------|
| `EC2_SSH_KEY` | Your PEM key content |
| `HOST_DNS`    | EC2 Public DNS |
| `USERNAME`    | Usually `ubuntu` |
| `TARGET_DIR`  | e.g. `/home/ubuntu/index` |

### 3. Create `.github/workflows/push-action-ec2.yml`
See: [push-action-ec2.yml](.github/workflows/push-action-ec2.yml)



---



