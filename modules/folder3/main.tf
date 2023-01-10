resource "aws_eip" "lb" {
  instance = aws_instance.ec2.id
  vpc      = true
}

resource "aws_instance" "ec2" {
  ami               = "ami-21f78e11"
  availability_zone = "us-west-2a"
  instance_type     = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
