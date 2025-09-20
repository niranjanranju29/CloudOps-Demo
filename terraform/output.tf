output "app_url" {
  value = "http://${aws_instance.cloudops_app.public_ip}:5000"
}
