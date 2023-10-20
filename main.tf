resource "aws_security_group" "bastion" {
  name        = "webserver1"
  description = "webserver1"
  vpc_id      = "vpc-0c6619d6729d8211e"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.29.0/32"]
  }
  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.cidr_blocks]
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.cidr_blocks]
  }
  ingress {
    description     = "Jenkins"
    from_port       = 8080
    to_port         = 8080
    protocol        = "tcp"
    security_groups = [var.source_security_group_id]
  }

  tags = {
    Name = "webserver1"
  }
}
