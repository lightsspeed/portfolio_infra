# outputs.tf
output "vpc_id" {
  description = "The ID of the VPC."
  value       = aws_vpc.portfolio_vpc.id

}

output "public_subnet_ids" {
  description = "The IDs of the public subnets."
  value       = aws_subnet.portfolio_SN_public[*].id

}

output "public_sg_ids" {
  description = "The IDs of the public security groups."
  value       = aws_security_group.portfolio_SG_public[*].id
}
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  value       = aws_internet_gateway.portfolio_igw.id

}
