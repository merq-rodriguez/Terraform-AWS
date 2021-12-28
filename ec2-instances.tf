resource "aws_instance" "server_1" {
  ami = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
  count = 1

  subnet_id = aws_subnet.subnet1.id
  associate_public_ip_address = true
  private_ip = "10.0.10.78"

  vpc_security_group_ids = [
    aws_security_group.SG_ALLOW_HTTP.id,
    aws_security_group.SG_ALLOW_Ping_SSH.id
  ]

  key_name = aws_key_pair.deployer.key_name

  tags = {
    Name = "Server 1"
    Owner = "Terraform"
    Env = "Development"
  }
}