###############################
# Here are the subnet configs #
###############################


#
# Create Management Subnet 
#
resource "aws_subnet" "management" {
  vpc_id                = module.vpc.vpc_id
  cidr_block            = "10.0.1.0/24"
  availability_zone     = var.az
  tags = {
    Name = "sslo-management"
    Group_Name = "sslo-management"
  }
}

#
# Create External Subnet
#
resource "aws_subnet" "external" {
  vpc_id                = module.vpc.vpc_id
  cidr_block            = "10.0.2.0/24"
  availability_zone     = var.az
  tags = {
    Name = "sslo-external"
    Group_Name = "sslo-external"
  }
}

#
# Create DMZ1 Subnet
#
resource "aws_subnet" "DMZ1" {
  vpc_id                = module.vpc.vpc_id
  cidr_block            = "10.0.3.0/24"
  availability_zone     = var.az
  tags = {
    Name = "DMZ1"
    Group_Name = "DMZ1"
  }
}

#
# Create DMZ2 Subnet
#
resource "aws_subnet" "DMZ2" {
  vpc_id                = module.vpc.vpc_id
  cidr_block            = "10.0.4.0/24"
  availability_zone     = var.az
  tags = {
    Name = "DMZ2"
    Group_Name = "DMZ2"
  }
}

#
# Create Internal Subnet
#
resource "aws_subnet" "internal" {
  vpc_id                = module.vpc.vpc_id
  cidr_block            = "10.0.5.0/24"
  availability_zone     = var.az
  tags = {
    Name = "internal"
    Group_Name = "internal"
  }
}

