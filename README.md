# terraform-aws-sslo
Terraform and Configuration Management files for an AWS SSLO deployment 

Built and Tested with the following versions in AWS East Region.
Terraform version v.0.14.5
AWS Provider v3.57.0

Region and AZ are set to East and 1a, these are set in the variables.tf

Instance types are set in the variables.tf

Static private IP's are set for the BIG-IP, these are set in the f5_onboard.tmpl and in interfaces.tf

You will need a BYOL SSLO key/license to properly spin this up.  This is hardcoded in the f5_onboard.tmpl

User=admin Password=f5Twister! , this is configured for demo/dev enviroments only, it is recommend that you use a secrets manager like Secrets or Vault

SSLO has ATC packages installed and DO provisions SSLO and sets networking up via runtime-init in the f5_onboard.tmpl

SSLO day 2 automation coming later(as3 or ansible)

The Inspection device is a Linux host with Snort installed. Snort is not configured but it will bootstrap with appropriate routing and IP forwarding so that packets
traverse the inspection zone and re-enter the SSLO DMZ2 interface.

Prereqs:

1. Terraform >= v.0.14.5

2. Git installed on your local machine to clone this repo

3. An AWS account with programmatic access and Key Pair created



