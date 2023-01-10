resource "aws_eip" "lb" {
  instance = "i-0b22a22eec53b9321"
  vpc      = true
}
