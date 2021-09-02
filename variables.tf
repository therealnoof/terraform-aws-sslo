#
# Region - Change Your Region Here
#
variable "region" {
  description = "Set the Region"
  type        = string
  default     = "us-east-1"
}

#
# Availability Zone - Set Your Region
#
variable "az" {
  description = "Set Availability Zone"
  type        = string
  default     = "us-east-1a"
}