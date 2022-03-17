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
  default     = "ami-0aad84f764a2bd39a"
}


#
# BIG-IP AMI - Change AMI to whatever, the world is your oyster!
#
variable "sslo_ami" {
  description = "BIG-IP version 16.1.x"
  type        = string
  #default     = "ami-00e5f8a1ccd470b8a" #<--newest version but has bugs, do not use right now
  default     = "ami-08d7cf776e3a0e6fb"
}

#
# Inspection AMI - Change AMI to whatever, the world is your oyster!
#
variable "inspection_ami" {
  description = "Snort Network Intrusion and Detection System"
  type        = string
  default     = "ami-093f4a65f24ed5524"
}

#
# Webapp Test AMI - Change AMI to whatever, the world is your oyster!
#
variable "webapp_ami" {
  description = "Test webb app"
  type        = string
  default     = "ami-05343502b4149e010"
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
