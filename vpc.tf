resource "aws_vpc" "abhi_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name="home wifi"
  }
}

