resource "aws_vpc" "myvpc-session830" {
  cidr_block       = var.vpc_cidrs["us-east-2"]
  instance_tenancy = "default"

  tags = {
    Name = "myvpc-session830"
  }
}


resource "aws_vpc" "dev" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"


  tags = {
    Name = "dev"
  }
}

