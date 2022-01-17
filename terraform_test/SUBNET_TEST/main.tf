resource "aws_subnet" "testnet-1" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "Test Subnet-1"
  }
}

resource "aws_subnet" "testnet-2" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = "Test Subnet-2"
  }
}


# ROUTE TABLE ASSOCIATION

resource "aws_route_table_association" "test_rta" {
  subnet_id      = [aws_subnet.testnet-1.id, aws_subnet.testnet-2.id]
  route_table_id = aws_route_table.prod_route.id
}




