resource "aws_subnet" "subnet-1" {
  vpc_id            = var.vpc_id
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id            = var.vpc_id
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Subnet-2"
  }
}


# ROUTE TABLE ASSOCIATION

resource "aws_route_table_association" "rt-a" {
  subnet_id      = [var.subnet-1, var.subnet-2]
  route_table_id = var.route_table
}




