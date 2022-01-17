resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.prod_vpc.id
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id            = aws_vpc.prod_vpc.id
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Subnet-2"
  }
}


# ROUTE TABLE ASSOCIATION

resource "aws_route_table_association" "rt-a" {
  subnet_id      = aws_subnet.prod_subnet.id
  route_table_id = aws_route_table.prod_route.id
}




