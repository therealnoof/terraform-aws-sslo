#
# Region - Change Your Region Here
#
variable "region" {
  description = "Set the Region"
  type        = string
  default     = "us-west-2"
}

#
# Availability Zone - Set Your AZ
#
variable "az" {
  description = "Set Availability Zone"
  type        = string
  default     = "us-west-2a"
}

#
# Jump Box AMI - Change AMI to whatever, the world is your oyster!
#
variable "jumpbox_ami" {
  description = "Windows Server 2019 Base"
  type        = string
  default     = "ami-058b12f51d412b5db"
}

#
# BIG-IP AMI - Change AMI to whatever, the world is your oyster!
#
variable "sslo_ami" {
  description = "BIG-IP version 16.1.x"
  type        = string
  default     = "ami-0e6b62154bdaec138"
}

#
# Inspection AMI - Change AMI to whatever, the world is your oyster!
#
variable "inspection_ami" {
  description = "Snort Network Intrusion and Detection System"
  type        = string
  default     = "ami-0ca1a165e63a6f102"
}

#
# Webapp Test AMI - Change AMI to whatever, the world is your oyster!
#
variable "webapp_ami" {
  description = "Test webb app"
  type        = string
  default     = "ami-0b1d8448c4f3c4376"
}


#
# Replace this with your SSH Keypair name 
# You should have created a key pair in advance, if not go create one!
#
variable "ec2_key_name" {
  description = "AWS EC2 Key name for SSH access"
  type        = string
  default     = "demo"
}

#
# Add a prefix to objects in SSLO - this will make identifying your config easier
#
variable "prefix" {
  description = "Type a prefix name to keep your SSLO objects unique"
  type        = string 
  default     = "demo"
}
