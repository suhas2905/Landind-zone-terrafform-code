variable "vpc_cidr" {
}

variable "subnets_cidr" {
}

variable "public_subnets_cidr" {
}


variable "availability_zones" {
}
variable "enabled" {
  default     = true
  description = "(Optional) Enable the provisioning of resources of the module or not"
  type        = bool
}
 
