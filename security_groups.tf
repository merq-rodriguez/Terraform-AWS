resource "aws_security_group" "SG_ALLOW_Ping_SSH" {
  name = "SG_ALLOW_Ping_SSH"     
  description = "Allow Ping and SSH traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    Name = "Ping and SSH"

  }
}

resource "aws_security_group" "SG_ALLOW_HTTP" {
  name = "SG_ALLOW_HTTP"
  description = "Allow http and https"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    Name = "Http and Https"
  }
}