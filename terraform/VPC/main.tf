resource "aws_vpc" "prod_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "Production VPC"
  }
}
