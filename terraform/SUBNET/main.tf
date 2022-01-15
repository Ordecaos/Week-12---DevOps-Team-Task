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


# Name == Dev
# Subnet_ID == subnet-07627ed79b4e8d931
# IPv4 == 10.0.0.0/24


# Name == Test
# Subnet_ID == subnet-0256c9f37f6ff2506
# IPv4 == 10.0.0.0/24


# VPC_ID == vpc-019348fc8d4cd2d79
