#################################################################################
# Here we create an assign an ephemeral EIP to the Jumpbox management interface #
#################################################################################

#
# Create Ephemeral EIP
#
resource "aws_eip" "ephemeral" {
  vpc                         = true
  public_ipv4_pool            = "amazon"
}

#
# Create EIP Association with Jump Box Management Interface
#
resource "aws_eip_association" "eip" {
  network_interface_id        = aws_network_interface.sslo_jumpbox_management.id
  allocation_id               = aws_eip.ephemeral.id
}