# CREATES INGRESS AND EGRESS RULES FOR SECURITY_GROUP

resource "aws_security_group" "web_traffic" {
  name        = "Web Traffic"
  description = "Allow inbound and outbound web traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Jenkins"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Front End"
    from_port   = 4200
    to_port     = 4200
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Back End"
    from_port   = 9966
    to_port     = 9966
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # Any protocol
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Allow Web Traffic"
  }
}


resource "aws_network_interface" "web_server_1" {
  subnet_id       = var.subnet_1
  private_ips     = ["10.1.0.50", "10.1.0.51"]
  security_groups = [var.web_traffic]

  attachment {
    instance     = var.load_balancer
    device_index = 1
  }

  tags = {
    Name = "Main Web Server"
  }
}

# resource "aws_network_interface" "web_server_2" {
#   subnet_id       = var.subnet_2
#   private_ips     = ["10.1.0.51"]
#   security_groups = [var.web_traffic]
# }


resource "aws_eip" "eip1" {
  vpc               = true
  network_interface = var.web_server_1
  # associate_with_private_ip = "10.0.0.178"
  depends_on = [var.gateway_id]

  tags = {
    Name = "Custom Elastic IP"
  }
}



# resource "aws_eip" "eip2" {
#   vpc               = true
#   network_interface = var.web_server_2
#   # associate_with_private_ip = "10.0.0.179"
#   depends_on = [var.gateway_id]
# }
