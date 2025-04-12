# main.tf
resource "aws_instance" "portfolio_ec2" {
  ami                         = "ami-0e35ddab05955cf57"
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  subnet_id                   = var.public_subnet_ids[count.index]
  vpc_security_group_ids      = var.public_sg_ids
  count                       = length(var.public_subnet_ids)
  associate_public_ip_address = true

  tags = {
    Name = "portfolio_ec2_${count.index}"
  }

}


resource "aws_eip" "portfolio_eip" {
  count    = length(var.public_subnet_ids)
  instance = aws_instance.portfolio_ec2[count.index].id

  tags = {
    Name = "portfolio_eip_${count.index}"
  }

}
