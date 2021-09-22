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

There are static IP addresses hard coded for ease of demo at the moment. The outputs at the completion of the Terraform will help with IP understanding.

The VIP address is 10.0.2.200



Prereqs:

1. Terraform >= v.0.14.5

2. Git installed on your local machine to clone this repo

3. An AWS account with programmatic access and Key Pair created

Steps to deploy:

1. Make sure you meet the prereqs

2. Replace the hard coded license key in the f5_onboard.tmpl file

3. run these commands:

terraform init

terraform plan

terraform apply

terraform destroy <-- when you are ready to tear it down

4. The BIG-IP SSLO is not configured, this is coming soon but all of the plumbing is in place

5. Configure a L3 Inbound topology

6. Use auto map and on the port remap use the default

7. On the Egress, use automap and network default

8. Use DMZ1 Vlan for to

9. Use DMZ2 Vlan for from

<b>Inbound Traffic Diagram</b>

 ![f5](https://user-images.githubusercontent.com/18743780/134435723-a9216d8a-0cd7-463a-bda7-665eaaff9008.png)



