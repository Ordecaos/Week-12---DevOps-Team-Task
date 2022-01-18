output "subnet_1" {
  value = aws_vpc.subnet_1.id
}

output "subnet_2" {
  value = aws_vpc.subnet_2.id
}

output "rta" {
  value = aws_route_table_association.rta
}
