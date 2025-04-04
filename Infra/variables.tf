variable "region" {
  type    = string
  default = ""
}

variable "vpc_cidr" {
  type    = string
  default = ""
}

variable "public_subnet_1" {
  description = "List of public subnet CIDRs"
  type        = string
  default     = ""
}

variable "public_subnet_2" {
  description = "List of public subnet CIDRs"
  type        = string
  default     = ""
}

variable "pub_zone" {
  description = "AZ pub subnet-1"
  type        = string
  default     = ""
}

variable "pub_zone-1" {
  description = "AZ pub subnet-2"
  type        = string
  default     = ""
}

variable "cluster_version" {
  description = "Kubernetes cluster version"
  type        = string
  default     = ""
}

variable "key" {
  type = string
}

variable "ami_type" {
  type = string
}

variable "k8s_instance_types" {
  description = "Instance types for node groups"
  type        = string
  default     = ""
}

variable "node_group_name" {
  type    = string
  default = ""
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Additional resource tags"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}