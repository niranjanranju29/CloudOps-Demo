terraform {
  backend "s3" {
    bucket         = "cloudops-demo-tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cloudops-demo-locks"  # for state locking (optional)
    encrypt        = true
  }
}
