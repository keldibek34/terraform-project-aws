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
 tags   = var.tags
} 
# Attach Internet Gateway to Public Subnets
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
    tags       = var.tags
  }
 }

resource "aws_route_table" "private_route_table" {
  vpc_id       = aws_vpc.main.id
  tags         = var.tags
}

