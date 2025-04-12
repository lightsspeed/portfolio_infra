# variables.tf
variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
}

variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone."
  type        = string
}


variable "key_name" {
  description = "The name of the key pair to use for EC2 instances."
  type        = string
}


variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string

}

