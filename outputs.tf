output "sslo_internal" {
  value       = aws_network_interface.sslo_bigip_internal.private_ip
  description = "The private IP address of SSLO internal interface."
}

output "sslo_external" {
  value       = aws_network_interface.sslo_bigip_external.private_ip
  description = "The private IP address of SSLO external interface."
}

output "sslo_dmz1" {
  value       = aws_network_interface.sslo_bigip_dmz1.private_ip
  description = "The private IP address of SSLO DMZ1 interface."
}

output "sslo_dmz2" {
  value       = aws_network_interface.sslo_bigip_dmz2.private_ip
  description = "The private IP address of SSLO DMZ2 interface."
}

output "sslo_management" {
  value       = aws_network_interface.sslo_bigip_management.private_ip
  description = "The private IP address of SSLO management interface."
}

output "jumpbox_public_ip" {
  value       = aws_instance.jumpbox.public_ip
  description = "The public IP of the jumpbox."
}

output "jumpbox_public_dns" {
  value       = aws_instance.jumpbox.public_dns
  description = "The public DNS of the jumpbox."
}

