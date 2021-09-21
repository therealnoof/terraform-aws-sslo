########################################################
# Here you will find the Security Group configurations #
########################################################


#
# Create Security Group for Management
#
resource "aws_security_group" "sslo_management" {
  vpc_id                = module.vpc.vpc_id
  description           = "sslo_sg_management"
  name                  = "sslo_sg_management"
  tags = {
    Name = "sslo_sg_management"
  }
  ingress {
    # SSH (change to whatever ports you need)
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}


#
# Create Security Group for External
#
resource "aws_security_group" "sslo_external" {
  vpc_id                = module.vpc.vpc_id
  description           = "sslo_sg_external"
  name                  = "sslo_sg_external"
  tags = {
    Name = "sslo_sg_external"
  }
  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

#
# Create Security Group for Internal
#
resource "aws_security_group" "sslo_internal" {
  vpc_id                = module.vpc.vpc_id
  description           = "sslo_sg_internal"
  name                  = "sslo_sg_internal"
  tags = {
    Name = "sslo_sg_internal"
  }
  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}


#
# Create Security Group for Inspection Zone
#
resource "aws_security_group" "sslo_inspection_zone" {
  vpc_id                = module.vpc.vpc_id
  description           = "sslo_sg_inspection_zone"
  name                  = "sslo_sg_inspection_zone"
  tags = {
    Name = "sslo_sg_inspection_zone"
  }
  ingress {
    # Allow All (change to whatever ports you need)
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}