resource "aws_security_group" "web" {
  name   = "FOLDER-1-WebServer-SG"
  vpc_id = "vpc-981729797987"

  ingress {
    description = "Allow port HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  tags = {
    Name  = "FOLDER-3-WebServer SG by Terraform"
    Owner = "Denis Astahov"
  }
}
