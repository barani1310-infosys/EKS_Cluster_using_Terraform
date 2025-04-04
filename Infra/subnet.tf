resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.eks.id
  cidr_block              = var.public_subnet_1
  availability_zone       = var.pub_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "public-sub-1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.eks.id
  cidr_block              = var.public_subnet_2
  availability_zone       = var.pub_zone-1
  map_public_ip_on_launch = true

  tags = {
    Name = "public-sub-2"
  }
}