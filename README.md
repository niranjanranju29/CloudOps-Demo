# 🚀 CloudOps Pipeline Demo – AWS + Docker + Terraform + GitHub Actions  

## 📌 Overview  
This project demonstrates a **real-world CloudOps/DevOps pipeline**:  
- Flask web application  
- Dockerized & pushed to DockerHub  
- GitHub Actions CI/CD to automate build + infra deployment  
- Terraform to provision AWS EC2 & run the container  

---

## ⚙️ Tech Stack  
- AWS (EC2, Security Groups)  
- Terraform (Infrastructure as Code)  
- Docker (App containerization)  
- GitHub Actions (CI/CD automation)  
- Python Flask (Web application)  

---

## 🏗️ Architecture  

```text
Developer → GitHub → GitHub Actions → DockerHub → AWS EC2 (Terraform)
                        |                       |
                 Build & Push Image       Deploy & Run Container
