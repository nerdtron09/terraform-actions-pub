## VPC and Subnets file


resource "aws_vpc" "cyber-vpc" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "cyber-vpc"
    Env  = "dev"
  }
}


# resource "aws_subnet" "pub-subnets-1" {
#   vpc_id            = aws_vpc.cyber-vpc.id
#   cidr_block        = "10.10.1.0/24"
#   availability_zone = "ap-southeast-2a"

#   tags = {
#     Name = "cyber-vpc"
#     Env  = "dev"
#   }
# }


## Count 3 Pub subs
resource "aws_subnet" "pub-subnets" {
  count             = length(var.az_list)
  vpc_id            = aws_vpc.cyber-vpc.id
  cidr_block        = local.subnet_cidr[count.index]
  availability_zone = var.az_list[count.index]

  tags = merge(
    var.standard_tags,
    {
      Name = "public-subnet-${count.index + 1}"
      Env  = "dev"
    }
  )
}


resource "aws_internet_gateway" "cyber-igw" {
  vpc_id = aws_vpc.cyber-vpc.id

  tags = {
    Name = "cyber-vpc"
    Env  = "dev"
  }
}

locals {
  subnet_cidr = ["10.10.30.0/24", "10.10.40.0/24", "10.10.50.0/24"]
}