resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr_block
    enable_dns_hostnames = true
    tags = {
        Name = "Main_Project_VPC"
        ID = "vpc-019348fc8d4cd2d79"
    }
}