provider "aws" {
  region = "us-west-2"
}
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}
module "nat" {
  source = "./modules/nat"
  public_subnet_id = module.vpc.public_subnet_id
}
module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.vpc.vpc_id
}
module "key_pair" {
  source = "./modules/key_pair"
  key_name = var.key_name
}
module "instances" {
  source = "./modules/instances"
  ami_nginx = var.ami_nginx
  ami_db = var.ami_db
  public_subnet_id = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id
  key_name = var.key_name
  nginx_sg_id = module.security_groups.nginx_sg_id
  db_sg_id = module.security_groups.db_sg_id
}
