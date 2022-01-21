output "vpc_id" {
  value = aws_vpc.prod_vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.prod_vpc.cidr_block
}
