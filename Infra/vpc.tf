resource "aws_vpc" "eks" {
  cidr_block = var.vpc_cidr


  tags = {
    Name = "eks-VPC"
  }
}