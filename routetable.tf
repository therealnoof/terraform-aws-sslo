# #########################################################################################
# Here you will find the Route Table, Route Table Associations and the IGW Configurations #
###########################################################################################


#
# Create the Route Table
#
resource "aws_route_table" "sslo-route-table" {
  vpc_id                = module.vpc.vpc_id
  
    route {
    cidr_block          = "0.0.0.0/0"
    gateway_id          = aws_internet_gateway.sslo_igw.id
  }
  tags = {
    Name = "sslo-route-table"
  }
} 

#
# Create the Route Table associations
#
resource "aws_route_table_association" "sslo-route-table-management" {
  subnet_id             = aws_subnet.management.id
  route_table_id        = aws_route_table.sslo-route-table.id
}

resource "aws_route_table_association" "sslo-route-table-external" {
  subnet_id             = aws_subnet.external.id
  route_table_id        = aws_route_table.sslo-route-table.id
}

resource "aws_route_table_association" "sslo-route-table-DMZ1" {
  subnet_id             = aws_subnet.DMZ1.id
  route_table_id        = aws_route_table.sslo-route-table.id
}

resource "aws_route_table_association" "sslo-route-table-DMZ2" {
  subnet_id             = aws_subnet.DMZ2.id
  route_table_id        = aws_route_table.sslo-route-table.id
}

resource "aws_route_table_association" "sslo-route-table-Internal" {
  subnet_id             = aws_subnet.internal.id
  route_table_id        = aws_route_table.sslo-route-table.id
}


#
# Create the Main Route Table asscociation
#
resource "aws_main_route_table_association" "sslo-main-route-table-association" {
  vpc_id                = module.vpc.vpc_id
  route_table_id        = aws_route_table.sslo-route-table.id
}


#
# Create the IGW
#
resource "aws_internet_gateway" "sslo_igw" {
  vpc_id                = module.vpc.vpc_id
  tags = {
    Name = "sslo-igw"
  }
}