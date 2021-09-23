####################################
# Transit Gateway Configs Are Here #
####################################


#
# Create the TGW
#

resource "aws_ec2_transit_gateway" "sslo-tgw" {
  description = "The TGW for the SSLO Config"
  tags = {
    Name = "${var.prefix}-sslo-tgw"
  }
}

#
# Create the TGW Attachments
#

resource "aws_ec2_transit_gateway_vpc_attachment" "sslo_security_stack" {
  subnet_ids         = [aws_subnet.internal.id]
  transit_gateway_id = aws_ec2_transit_gateway.sslo-tgw.id
  vpc_id             = module.vpc.vpc_id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "sslo_security_appstack" {
  subnet_ids         = [aws_subnet.tgw-appstack.id]
  transit_gateway_id = aws_ec2_transit_gateway.sslo-tgw.id
  vpc_id             = aws_vpc.appstack.id
}

#
# Create the TGW Route Table
#

resource "aws_ec2_transit_gateway_route_table" "sslo-tgw-rt" {
  transit_gateway_id = aws_ec2_transit_gateway.sslo-tgw.id
  tags = {
    Name = "${var.prefix}-sslo-tgw-route-table"
  }
}