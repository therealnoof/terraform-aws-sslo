#
# Region - Change Your Region Here
#
variable "region" {
  description = "Set the Region"
  type        = string
  default     = "us-east-1"
}

#
# Availability Zone - Set Your AZ
#
variable "az" {
  description = "Set Availability Zone"
  type        = string
  default     = "us-east-1a"
}

#
# Jump Box AMI - Change AMI to whatever, the world is your oyster!
#
variable "jumpbox_ami" {
  description = "Windows Server 2019 Base"
  type        = string
  default     = "ami-029bfac3973c1bda1"
}

#
# This outputs to the console asking for the Key Pair for the EC2 instances
# You should have created a key pair in advance, if not go create one!
#
variable "ec2_key_name" {
  description = "AWS EC2 Key name for SSH access"
  type        = string
}

#
# SSLO External Private IP
#
variable "sslo_external_ip" {
  description = "SSLO External Private IP"
  type        = string
  default     = "10.0.2.180"
}

#
# SSLO Internal Private IP
#
variable "sslo_internal_ip" {
  description = "SSLO Internal Private IP"
  type        = string
  default     = "10.0.5.9"
}

#
# SSLO DMZ1 Private IP
#
variable "sslo_dmz1_ip" {
  description = "SSLO DMZ1 Private IP"
  type        = string
  default     = "10.0.3.27"
}

#
# SSLO DMZ2 Private IP
#
variable "sslo_dmz2_ip" {
  description = "SSLO DMZ2 Private IP"
  type        = string
  default     = "10.0.4.203"
}

