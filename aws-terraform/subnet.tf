resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc-session830.id
  cidr_block = "10.1.0.0/24"

  tags = {
    Name = "mysubnet"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}