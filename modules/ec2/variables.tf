# variables.tf
variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string

}

variable "public_subnet_ids" {
  description = "The IDs of the public subnets."
  type        = list(string)

}

variable "public_sg_ids" {
  description = "The IDs of the public security groups."
  type        = list(string)

}


variable "key_name" {
  description = "SSH key name for EC2"
  type        = string
}
