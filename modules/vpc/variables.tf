# variables.tf
variable "vpc_cidr" {
  description = "value of the VPC CIDR block."
  type        = string
}

variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string

}

variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone."
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "portfolio"
}


