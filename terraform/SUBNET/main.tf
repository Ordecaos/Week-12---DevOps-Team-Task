resource "aws_subnet" "subnet_1" {
  vpc_id            = var.vpc_id
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = var.vpc_id
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Subnet-2"
  }
}


# ROUTE TABLE ASSOCIATION

resource "aws_route_table_association" "rta" {
  subnet_id      = [var.subnet_1, var.subnet_2]
  route_table_id = var.route_table
}




