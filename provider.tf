terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "abhishek"
}

# Create a VPC
resource "aws_vpc" "abhishek_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name="mahesh_vpc"
  }
}

terraform {
  backend "s3" {
    bucket = "abhishekterraformstate"
    key    = "logs/terraform.tfstate"
    region = "us-east-1"
    profile = "abhishek"
  }
}
