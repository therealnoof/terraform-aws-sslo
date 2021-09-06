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
# Replace this with your SSH Keypair name 
# You should have created a key pair in advance, if not go create one!
#
variable "ec2_key_name" {
  description = "AWS EC2 Key name for SSH access"
  type        = string
  default     = "noofdog"
}