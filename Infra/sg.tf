resource "aws_security_group" "eks_cluster" {
  name        = "eks-cluster-sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.eks.id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 6553
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "eks-sg-2025"
  }
}