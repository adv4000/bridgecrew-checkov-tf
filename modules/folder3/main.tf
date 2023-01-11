resource "aws_eip" "lb" {
  instance = aws_instance.ec2.id
  vpc      = true
}
