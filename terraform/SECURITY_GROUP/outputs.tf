output "web_server_1" {
  value = aws_network_interface.web_server_1.id
}

# output "web_server_2" {
#   value = aws_network_interface.web_server_2.id
# }

output "web_traffic" {
  value = aws_security_group.web_traffic.id
}

# output "eip_address" {
#   value = "10.0.0.178"
# }
