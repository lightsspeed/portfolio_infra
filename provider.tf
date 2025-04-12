# provider.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "portfolio-terraform-state-april-2025"
    key    = "state.tfstate"
    region = "ap-south-1"
    # use_lockfile = true
    dynamodb_table = "portfolio-lock"
  }
}

provider "aws" {
  region = var.region
}
