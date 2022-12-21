module "sap_landing_zone" {
  source                    = "./modules/aws-landing-zone"
  #enabled                  = var.enabled

  vpc_cidr                  = var.vpc_cidr
  subnets_cidr              = var.subnets_cidr
  public_subnets_cidr       = var.public_subnets_cidr
  availability_zones        = var.availability_zones
}