resource "aws_vpc" "prod_vpc" {
  cidr_block           = main_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "Production_VPC"
  }
}
