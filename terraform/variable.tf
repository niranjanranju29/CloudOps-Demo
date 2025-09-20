variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "docker_image" {
  description = "Docker image to run"
  default     = "nr1392/cloudops-flask:v1"
}


provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
