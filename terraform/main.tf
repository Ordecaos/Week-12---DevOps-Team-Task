terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  # Configure the AWS Provider
  provider "aws" {
    profile = "group_admin"
    region  = "eu-west-2"
    shared_credentials_file = "~/.aws/credentials"
  }

  
  # Define source modules for other AWS configurations
  module "instances" {
    source                 = "./EC2"
  }
  module "vpc" {
    source         = "./VPC"
    main_cidr_block = "10.0.0.0/24"
  }
  module "igw" {
    source   = "./INTERNET_GATEWAYS"
  }
  module "subnet" {
    source         = "./SUBNET"
  }

  module "security_groups" {
    source = "./SECURITY_GROUPS"
  }

  module "iam" {
    source = "./IAM"
  }

  module "eks" {
    source               = "./EKS"
  }