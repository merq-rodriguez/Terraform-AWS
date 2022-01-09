variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-2"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  type        = string
  default     = "10.0.30.0/24"
  description = "CIDR Subnet 1"
}

variable "subnet_2_cidr" {
  type        = string
  default     = "10.0.50.0/24"
  description = "CIDR Subnet 2"
}

variable "subnet_3_cidr" {
  type        = string
  default     = "10.0.60.0/24"
  description = "CIDR Subnet 3"
}


variable "availability_zone_subnet_1" {
  type        = string
  default     = "us-east-2a"
  description = "Availability zone subnet 1 - us-east-2a"
}

variable "availability_zone_subnet_2" {
  type        = string
  default     = "us-east-2b"
  description = "Availability zone subnet 2 - us-east-2b"
}

variable "availability_zone_subnet_3" {
  type        = string
  default     = "us-east-2c"
  description = "Availability zone subnet 3 - us-east-2c"
}



variable "ami_id" {
  type    = string
  default = "ami-002068ed284fb165b"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "privates_ip_subnet_1" {
  description = "Lista de IP para subnets"
  type = list(string)
  default = []
}

variable "availability_zones_subnet_1" {
  type = list(string)
  description = "Avaliability zones - Subnet 1"
}

/*

variable "env" {
  type    = string
  default = "Course"
}

variable "product" {
  type    = string
  default = ""
}

variable "dir_type" {
  type    = string
  default = "SimpleAD"
}

variable "az_names" {
  type    = list(string)
  default = [""]
}

variable "instance_type" {
  type = string
}

variable "subnet_cidr_blocks" {
  type    = list(string)
  default = [""]
}

variable "temp_windows_user_name" {
}

variable "temp_windows_user_pass" {
}

variable "domain_name" {
}

variable "allocated_storage" {
}

variable "engine_name" {
}

variable "engine_version" {
}

variable "db_instance_type" {
}

variable "db_name" {
}

variable "username" {
}

variable "password" {
}

*/
