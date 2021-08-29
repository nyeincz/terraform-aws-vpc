resource "aws_vpc" "terraform_vpc" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terraform_vpc"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.10.1.0/24"
}