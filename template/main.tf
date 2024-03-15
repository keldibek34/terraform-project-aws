resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block   #string variable
  instance_tenancy = var.instance_tenancy # string variable
  tags             = var.tags
}

resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet1
  tags       = var.tags
}  
resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet2
  tags       = var.tags
}  
resource "aws_subnet" "public_subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet3
  tags       = var.tags
}  
resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet1
  tags       = var.tags
}  

resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet2
  tags       = var.tags
}

resource "aws_subnet" "private_subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet3
  tags       = var.tags
}
resource "aws_internet_gateway" "gw" {
 vpc_id = aws_vpc.main.id
} 
# Attach Internet Gateway to Public Subnets
resource "aws_route_table" "public_subnet_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

}
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public_subnet_rt.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public_subnet_rt.id
}

resource "aws_route_table_association" "public3" {
  subnet_id      = aws_subnet.public3.id
  route_table_id = aws_route_table.public_subnet_rt.id
}