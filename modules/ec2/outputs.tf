#outputs.tf
output "ec2_instance_ids" {
  description = "The IDs of the EC2 instances."
  value       = aws_instance.portfolio_ec2[*].id

}

output "public_ip_addresses" {
  description = "The public IP addresses of the EC2 instances."
  value       = aws_instance.portfolio_ec2[*].public_ip

}


output "eip_ids" {
  description = "The IDs of the Elastic IPs."
  value       = aws_eip.portfolio_eip[*].id

}

output "eip_public_ip_addresses" {
  description = "The public IP addresses of the Elastic IPs."
  value       = aws_eip.portfolio_eip[*].public_ip

}
