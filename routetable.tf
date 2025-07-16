# Create a public route table
resource "aws_route_table" "public_subnet_1" {
  vpc_id = data.aws_vpc.abhi_vpc.id

  route {
    cidr_block = "0.0.0.0/0" # Route all outbound traffic to the Internet Gateway
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "public-rt"
  }
}

# Associate public subnets with the public route table
resource "aws_route_table_association" "public_subnet_1" {
  count          = length(aws_subnet.public_subnet_1)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public_subnet_1.id
}


