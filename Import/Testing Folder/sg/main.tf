resource "aws_security_group" "Public-Security-Group" {
  name        = "Public-Security-Group"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpc-082d7307c5b7f973c.id
  tags = {
    Name = "Public-Security-Group"
  }
}