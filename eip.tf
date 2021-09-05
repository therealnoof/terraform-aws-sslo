###########################################################################################
# Here we create and assign an ephemeral EIP to the Jumpbox and SSLO management interface #
###########################################################################################

#
# Create Ephemeral EIP
#
resource "aws_eip" "jumpbox" {
  vpc                         = true
  public_ipv4_pool            = "amazon"
}

resource "aws_eip" "sslo_management" {
  vpc                         = true
  public_ipv4_pool            = "amazon"
}

#
# Create EIP Association with Jump Box Management Interface
#
resource "aws_eip_association" "jumpbox_eip" {
  network_interface_id        = aws_network_interface.sslo_jumpbox_management.id
  allocation_id               = aws_eip.jumpbox.id
}


#
# Create EIP Association with Jump Box Management Interface
#
resource "aws_eip_association" "sslo_management" {
  network_interface_id        = aws_network_interface.sslo_bigip_management.id
  allocation_id               = aws_eip.sslo_management.id
}
