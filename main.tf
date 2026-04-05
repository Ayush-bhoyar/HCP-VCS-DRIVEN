resource "aws_instance" "this" {
  count                       = var.no_of_instances
  instance_type               = var.instance_type
  ami                         = var.ami_id
  associate_public_ip_address = true

  tags = {
    Name        = "Ayush-Demo-Instance"
    Environment = "Dev"
    Project     = "HCP"
  }
}