# Create an Internet Gateway (if your existing VPC doesn't have one managed by Terraform)
resource "aws_internet_gateway" "main" {
  vpc_id = data.aws_vpc.abhi_vpc.id

  tags = {
    Name = "my-vpc-igw"
  }
}