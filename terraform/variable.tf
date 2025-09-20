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


variable "aws_profile" {
  description = "AWS CLI profile to use"
  default     = "ramesh"
}