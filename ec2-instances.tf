resource "aws_instance" "server_1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = length(var.subnet_private_ip)

  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  private_ip                  = element(var.subnet_private_ip, count.index)

  vpc_security_group_ids = [
    aws_security_group.SG_ALLOW_HTTP.id,
    aws_security_group.SG_ALLOW_Ping_SSH.id
  ]

  key_name = aws_key_pair.deployer.key_name

  user_data = file("user_data.sh")

  tags = {
    Name  = "Server-${count.index + 1}"
    Owner = "Terraform"
    Env   = "Development"
  }
}
