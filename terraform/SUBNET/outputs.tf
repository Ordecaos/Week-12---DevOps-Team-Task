# Subnets
output "subnet_1" {
  value = aws_subnet.all_subnets.0.id
}

output "subnet_2" {
  value = aws_subnet.all_subnets.1.id
}

# Route Tables
output "rta_subnet_1" {
  value = aws_route_table_association.rt_subnet_1.id
}

output "rta_subnet_2" {
  value = aws_route_table_association.rt_subnet_2.id
}
