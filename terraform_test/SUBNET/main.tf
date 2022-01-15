# SUBNETS
resource "aws_subnet" "prod_subnet" {
  vpc_id = aws_vpc.prod_vpc.id

  tags = {
    Name = "Prod/Dev"
  }
}

resource "aws_subnet" "testnet-1" {
  vpc_id = aws_vpc.prod_vpc.id

  tags = {
    Name = "Test Subnet-1"
  }
}

resource "aws_subnet" "testnet-2" {
  vpc_id = aws_vpc.prod_vpc.id

  tags = {
    Name = "Test Subnet-2"
  }
}


# ROUTE TABLE ASSOCIATION

resource "aws_route_table_association" "rt-a" {
  subnet_id      = aws_subnet.prod_subnet.id
  route_table_id = aws_route_table.prod_route.id
}




