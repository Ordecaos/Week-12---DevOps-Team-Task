resource "aws_vpc" "test_vpc" {
  cidr_block           = main_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "Test VPC"
  }
}
