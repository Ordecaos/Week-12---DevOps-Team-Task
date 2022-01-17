terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  # Configure the AWS Provider
  provider "aws_test" {
    profile = "group_admin"
    region  = "eu-west-2"
    shared_credentials_file = "~/.aws/credentials"
  }

  
  # Define source modules for other AWS configurations
  module "instances_test" {
    source                 = "./EC2_TEST"
  }
  module "vpc_test" {
    source         = "./VPC_TEST"
    main_cidr_block = "10.0.0.0/24"
  }
  module "igw_test" {
    source   = "./INTERNET_GATEWAYS_TEST"
  }
  module "subnet_test" {
    source         = "./SUBNET_TEST"
  }

  module "security_groups_test" {
    source = "./SECURITY_GROUPS_TEST"
  }

  module "iam_test" {
    source = "./IAM_TEST"
  }

  module "eks_test" {
    source               = "./EKS_TEST"
  }