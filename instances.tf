#################################
# Here are the instance configs #
#################################


#
# Create Jump Box
#
resource "aws_instance" "jumpbox" {

  ami                         = var.jumpbox_ami
  instance_type               = "m5.2xlarge"
  key_name                    = var.ec2_key_name  
  availability_zone           = var.az
  depends_on                  = [aws_internet_gateway.sslo_igw]
  tags = {
    Name = "sslo-jumpbox"
  }
  network_interface {
    network_interface_id      = aws_network_interface.sslo_jumpbox_management.id
    device_index              = 0
  }
}


#
# Create BIG-IP(SSLO)
#
resource "aws_instance" "sslo" {

  count                       = 1  
  ami                         = "ami-08257c0c5bb79a3f1"  
  instance_type               = "m5.4xlarge"
  key_name                    = var.ec2_key_name 
  ebs_block_device {
    volume_size               = 300
    device_name               ="/dev/xvda"
  } 
  availability_zone           = var.az
  depends_on                  = [aws_internet_gateway.sslo_igw]
  tags = {
    Name = "sslo-bigip"
  }
  # set the mgmt interface 
  network_interface {
    network_interface_id = aws_network_interface.sslo_bigip_management.id
    device_index         = 0
  }

  # set the external interface 
  network_interface {
    network_interface_id = aws_network_interface.sslo_bigip_external.id
    device_index         = 1
  }

  # set the internal interface 
  network_interface {
    network_interface_id = aws_network_interface.sslo_bigip_internal.id
    device_index         = 2
  }

  # set the inspection zone (DMZ1) interface 
  network_interface {
    network_interface_id = aws_network_interface.sslo_bigip_dmz1.id
    device_index         = 3
  }

  # set the inspection zone (DMZ2) interface 
  network_interface {
    network_interface_id = aws_network_interface.sslo_bigip_dmz2.id
    device_index         = 4
  }
  
}

#
# Create Test WebApp Server
#
resource "aws_instance" "webapp-server" {

  count                       = 1
  ami                         = "ami-0db50ca6dcf3dec27"  
  instance_type               = "t3.small"
  key_name                    = var.ec2_key_name  
  availability_zone           = var.az
  depends_on                  = [aws_internet_gateway.sslo_igw]
  tags = {
    Name = "sslo-webapp-server"
  }
  network_interface {
    network_interface_id      = aws_network_interface.sslo_test_webapp.id
    device_index              = 0
  }
}

#
# Create Inspection Device
# 
resource "aws_instance" "inspection_device" {

  count                       = 1
  ami                         = "ami-087c17d1fe0178315"  
  instance_type               = "t2.small"
  key_name                    = var.ec2_key_name  
  availability_zone           = var.az
  depends_on                  = [aws_internet_gateway.sslo_igw]
  tags = {
    Name = "sslo-inspection-device"
  }
  network_interface {
    network_interface_id      = aws_network_interface.sslo_inspection_device_management.id
    device_index              = 0
  }
  network_interface {
    network_interface_id      = aws_network_interface.sslo_inspection_device_dmz1.id
    device_index              = 1
  }
  network_interface {
    network_interface_id      = aws_network_interface.sslo_inspection_device_dmz2.id
    device_index              = 2
  }
}

