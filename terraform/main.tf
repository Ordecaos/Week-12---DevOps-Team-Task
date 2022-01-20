terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile                 = "group_admin"
  region                  = "eu-west-2"
  shared_credentials_file = "~/.aws/credentials"
}


# Define source modules for other AWS configurations
module "instances" {
  source = "./EC2"

  subnet_1    = module.subnet.subnet_1
  subnet_2    = module.subnet.subnet_2
  web_traffic = module.security_groups.web_traffic
  # web_server_1 = module.security_groups.web_server_1
  # web_server_2 = module.security_groups.web_server_2
}
module "vpc" {
  source = "./VPC"

  vpc_cidr_block = "10.1.0.0/16"
}
module "igw" {
  source = "./INTERNET_GATEWAY"

  vpc_id         = module.vpc.vpc_id
  gateway_id     = module.igw.gw_id
  route_table_id = module.igw.route_table_id
}
module "subnet" {
  source = "./SUBNET"

  vpc_id         = module.vpc.vpc_id
  vpc_cidr_block = module.vpc.vpc_cidr_block
  route_table_id = module.igw.route_table_id
  subnet_1       = module.subnet.subnet_1
  subnet_2       = module.subnet.subnet_2
}

module "security_groups" {
  source = "./SECURITY_GROUP"

  vpc_id       = module.vpc.vpc_id
  gateway_id   = module.igw.gw_id
  subnet_1     = module.subnet.subnet_1
  subnet_2     = module.subnet.subnet_2
  web_server_1 = module.security_groups.web_server_1
  # web_server_2 = module.security_groups.web_server_2
  web_traffic   = module.security_groups.web_traffic
  load_balancer = module.instances.load_balancer
}

module "eks" {
  source = "./EKS"
}

module "iam" {
  source = "./IAM"
}

