data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "all_subnets" {
  count                   = 2
  vpc_id                  = var.vpc_id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, 8, count.index)
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "Production Subnet-${count.index + 1}"
  }
}



# ROUTE TABLE ASSOCIATION
resource "aws_route_table_association" "rt_subnet_1" {
  subnet_id      = var.subnet_1
  route_table_id = var.route_table_id
}

resource "aws_route_table_association" "rt_subnet_2" {
  subnet_id      = var.subnet_2
  route_table_id = var.route_table_id
}




