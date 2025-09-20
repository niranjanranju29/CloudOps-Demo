resource "aws_security_group" "web_sg" {
  name        = "cloudops-pipeline-sg"
  description = "Allow Flask app and SSH"

  ingress {
    description = "Flask app"
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "cloudops_app" {
  ami           = "ami-08c40ec9ead489470" # Ubuntu 22.04 (check region)
  instance_type = var.instance_type
  security_groups = [aws_security_group.web_sg.name]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y docker.io
              systemctl start docker
              systemctl enable docker
              docker run -d -p 5000:5000 --restart always ${var.docker_image}
              EOF

  tags = {
    Name = "CloudOps-Pipeline-Demo"
  }
}
