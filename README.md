# terraform-aws-sslo
Repo consisting of Terraform and Configuration Management files for an AWS SSLO deployment 

Built and Tested with the following versions in AWS East Region.
Terraform version v.0.14.5
aws v3.57.0

Region and AZ are set to East and 1a, these are set in the variables.tf
Instance types are set in the variables.tf
Static IP's are set for the BIG-IP, these are set in the f5_onboard.tmpl and in instance interfaces.tf

You will need a BYOL SSLO key/license to properly spin this up.  This is hardcoded in the f5_onboard.tmpl


