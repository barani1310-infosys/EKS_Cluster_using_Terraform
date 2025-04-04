region = "ap-south-1"

vpc_cidr = "300.100.0.0/16"

public_subnet_1 = "300.100.1.0/24"
public_subnet_2 = "300.100.2.0/24"

pub_zone   = "ap-south-1a"
pub_zone-1 = "ap-south-1b"

cluster_version = "1.28"

key = "info"

ami_type = "ami-002f6e91abff6eb96"

k8s_instance_types = "t2.micro"

node_group_name = "aws-demo2"

tags = {
  Environment = "production"
  Team        = "devops"
  Application = "microservices"
}
