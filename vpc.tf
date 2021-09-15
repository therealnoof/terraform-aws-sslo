# Create the VPC's
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                 = "terraform-aws-sslo-securitystack"
  cidr                 = "10.0.0.0/16"
  azs                  = [var.az]
  enable_nat_gateway   = "true"
  enable_dns_hostnames = "true"
}
