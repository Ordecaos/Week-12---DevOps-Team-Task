output "subnet_1" {
  value = aws_subnet.subnet_1.id

}

# output "subnet_2" {
#   value = aws_subnet.subnet_2.id
# }

output "rta_subnet_1" {
  value = aws_route_table_association.rt_subnet_1.id
}

# output "rta_subnet_2" {
#   value = aws_route_table_association.rt_subnet_2.id
# }
