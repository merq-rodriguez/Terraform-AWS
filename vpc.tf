resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "First VPC"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_1_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_subnet_1

  tags = {
    Name = "Subnet1 on  us-east-2a"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_2_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_subnet_2

  tags = {
    Name = "Subnet2 on  us-east-2b"
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_3_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone_subnet_3

  tags = {
    Name = "Subnet3 on  us-east-2c"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Gateway Main"
  }
}

resource "aws_route_table" "routeA" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "ass_table_subnet1" {
  subnet_id = aws_subnet.subnet1.id
  route_table_id = aws_route_table.routeA.id
}

resource "aws_route_table_association" "ass_table_subnet2" {
  subnet_id = aws_subnet.subnet2.id
  route_table_id = aws_route_table.routeA.id
}

resource "aws_route_table_association" "ass_table_subnet3" {
  subnet_id = aws_subnet.subnet3.id
  route_table_id = aws_route_table.routeA.id
}