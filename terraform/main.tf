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

}
module "vpc" {
  source     = "./VPC"
  cidr_block = "10.0.0.0/24"
}
module "igw" {
  source    = "./INTERNET_GATEWAY"
  vpc_id    = module.vpc.vpc_id
  route_table = 
}
module "subnet" {
  source = "./SUBNET"
  vpc_id = module.vpc.vpc_id
}

module "security_groups" {
  source     = "./SECURITY_GROUP"
  vpc_id     = module.vpc.vpc_id
  gateway_id = module.igw.gw_id
  subnet_id  = [module.subnet.subnet_1, module.subnet.subnet_2]
}

module "iam" {
  source = "./IAM"
}

module "eks" {
  source = "./EKS"
}
