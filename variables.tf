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
# BIG-IP AMI - Change AMI to whatever, the world is your oyster!
#
variable "sslo_ami" {
  description = "BIG-IP version 16.1.x"
  type        = string
  default     = "ami-08257c0c5bb79a3f1"
}

#
# Inspection AMI - Change AMI to whatever, the world is your oyster!
#
variable "inspection_ami" {
  description = "Snort Network Intrusion and Detection System"
  type        = string
  default     = "ami-07f0ab90078850471"
}

#
# Webapp Test AMI - Change AMI to whatever, the world is your oyster!
#
variable "webapp_ami" {
  description = "Test webb app"
  type        = string
  default     = "ami-0c8d6a5fd0c9b9fe7"
}


#
# Replace this with your SSH Keypair name 
# You should have created a key pair in advance, if not go create one!
#
variable "ec2_key_name" {
  description = "AWS EC2 Key name for SSH access"
  type        = string
  default     = "noofdog"
}