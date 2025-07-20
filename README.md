# 🚀 Resume Deployment on AWS (CI/CD with Docker & GitHub Actions)

This project demonstrates how to automatically deploy a static resume website to an AWS EC2 instance using Docker and GitHub Actions.

## 📁 Tech Stack
- HTML/CSS
- Docker (containerization)
- GitHub Actions (CI/CD Pipeline)
- AWS EC2 (Ubuntu)



## ⚙️ How it Works

1. Push code to the `main` branch
2. GitHub Actions connects to EC2 via SSH
3. It clones the repository, builds a Docker image, and runs the container
4. Resume site is live and running on EC2 (Port 80)

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
| `HOST_DNS`    | EC2 Public DNS or IP |
| `USERNAME`    | Usually `ubuntu` |
| `TARGET_DIR`  | Deployment target directory (e.g. `/home/ubuntu/my-resume`) |

### 3. Create `.github/workflows/push-action-ec2.yml`
See: [push-action-ec2.yml](.github/workflows/push-action-ec2.yml)



---



