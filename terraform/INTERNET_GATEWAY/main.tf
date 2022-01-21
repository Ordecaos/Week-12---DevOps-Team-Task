
resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "Main Gateway"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = var.gateway_id
  }

  tags = {
    Name = "Main Route Table"
  }
}
