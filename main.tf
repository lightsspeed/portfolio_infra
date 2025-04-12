# main.tf

module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  region      = var.region
  domain_name = var.domain_name

}


module "ec2" {
  source            = "./modules/ec2"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  public_sg_ids     = module.vpc.public_sg_ids
  key_name          = var.key_name
}
