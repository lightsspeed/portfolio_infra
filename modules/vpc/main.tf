# main.tf
resource "aws_vpc" "portfolio_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.project_name
  }
}

resource "aws_internet_gateway" "portfolio_igw" {
  vpc_id = aws_vpc.portfolio_vpc.id
  tags = {
    Name = var.project_name
  }
}

resource "aws_route_table" "portfolio_rt_public" {
  vpc_id = aws_vpc.portfolio_vpc.id
  tags = {
    Name = var.project_name
  }
}

resource "aws_subnet" "portfolio_SN_public" {
  count                   = 1
  vpc_id                  = aws_vpc.portfolio_vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr, 8, count.index)
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = var.project_name
  }

}

resource "aws_security_group" "portfolio_SG_public" {
  vpc_id = aws_vpc.portfolio_vpc.id
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Restrict in prod
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
