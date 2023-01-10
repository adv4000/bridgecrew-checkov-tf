resource "aws_eip" "lb" {
  instance = "i-8768778876"
  vpc      = true
}
