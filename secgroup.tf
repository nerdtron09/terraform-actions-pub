## Security Groups
resource "aws_security_group" "ec2-secgroup" {
  name        = "ec2-secgroup"
  description = "test security group"
  vpc_id      = aws_vpc.cyber-vpc.id

  tags = {
    Name = "ec2-secgroup"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}