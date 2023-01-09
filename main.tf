module "sap_landing_zone" {
  source                    = "./modules/aws-landing-zone"
  #enabled                  = var.enabled

  vpc_cidr                  = var.vpc_cidr
  subnets_cidr              = var.subnets_cidr
  public_subnets_cidr       = var.public_subnets_cidr
  availability_zones        = var.availability_zones
  ami                       = var.ami
  instance_type             = var.instance_type
  key_name                  = var.key_name
  user_data                 = var.user_data
}
