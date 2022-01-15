terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

# Configure the AWS Provider
provider "aws" {
  profile = "dev_profile"
  region  = "eu-west-2"
}

resource "aws_instance" "manager_node" {
  ami           = "ami-0015a39e4b7c0966f"
  instance_type = "t2.micro"
    tags = {
      Name = "Manager Node"
  }
}

resource "aws_instance" "worker_node" {
  ami           = "ami-0015a39e4b7c0966f"
  instance_type = "t2.micro"
    tags = {
      Name = "Worker Node"
  }
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0015a39e4b7c0966f"
  instance_type = "t2.medium"
    tags = {
      Name = "CI/CD Server"
  }

}

resource "aws_instance" "load_balancer" {
  ami           = "ami-0015a39e4b7c0966f"
  instance_type = "t2.micro"
    tags = {
      Name = "Load Balancer"
  }

}
