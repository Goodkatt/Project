provider "aws" {
  region = "us-east-1"
  access_key = var.secret-key
  secret_key = var.secret-key-id
}

resource "aws_subnet" "private-subnet-az1" {
  vpc_id = var.default-vpc
  cidr_block = var.cidr-private-subnet-az1
  availability_zone = var.default-az-1
  map_public_ip_on_launch = false
  
  tags = {
    "Name" = "private-subnet-zone1"
  }
}

resource "aws_subnet" "private-subnet-az2" {
    vpc_id = var.default-vpc
    cidr_block = var.cidr-private-subnet-az2
    availability_zone = var.default-az-2
    map_public_ip_on_launch = false

    tags = {
      "Name" = "private-subnet-zone2"
    }
}

/*
resource "aws_nat_gateway" "nat-gateway-for-private-subnet" {
    allocation_id = aws_eip.elastic-ip-natgw.id
    subnet_id = aws_subnet.private-subnet-az1.id

}

resource "aws_eip" "elastic-ip-natgw" {
  vpc = true
}

resource "aws_route_table" "route-table-for-natgw" {
    vpc_id = var.default-vpc

    route  {
      cidr_block = "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat-gateway-for-private-subnet.id
    } 
    tags = {
      "Name" = "default-route-table"
    }
}

resource "aws_route_table_association" "default-route-table-associate" {
    subnet_id = aws_subnet.private-subnet-az1.id
    route_table_id = aws_route_table.route-table-for-natgw.id
}
resource "aws_instance" "default-1" {
    ami = var.default-amazon-linux-x8664-image
    instance_type = "t2.micro"
    key_name = "aws.gorkem.keypair"
    subnet_id = "subnet-0136d595d71110c71"
    tags = {
      "Name" = "In Amazon provided subnet"
    }
}
resource "aws_instance" "default-2" {
    ami = var.default-amazon-linux-x8664-image
    instance_type = "t2.micro"
    key_name = "aws.gorkem.keypair"
    subnet_id = "subnet-093dac14752e257f9"

    tags = {
      "Name" = "In my subnet with natgw"
    }
}
resource "aws_instance" "default-3" {
    ami = var.default-amazon-linux-x8664-image
    instance_type = "t2.micro"
    key_name = "aws.gorkem.keypair"
    subnet_id = "subnet-0136d595d71110c71"

    tags = {
      "Name" = "In Amazon provided subnet"
    }
}
*/