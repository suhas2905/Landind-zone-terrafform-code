# Generic variables
variable "aws_region" {
  description = "(Required) AWS Region to execute deployment to"
}
variable "aws_access_key" {
  description = "(Required) AWS Access key for your account"
}
variable "aws_secret_key" {
  description = "(Required) AWS Secret key for your account"
}
variable "enabled" {
  default     = true
  description = "(Optional) Enable the provisioning of resources of the module or not"
  type        = bool
}
variable "vpc_cidr" {
    default = "10.0.0.0/16"  #CIDR declaration for VPC
}
variable "subnets_cidr" {
    type = list
    default = ["10.0.1.0/24" , "10.0.2.0/24"] #CIDR declaration for 2 subnets 
}
variable "public_subnets_cidr" {
    type = list
    default = ["10.0.3.0/24" , "10.0.4.0/24"] #CIDR declaration for 2 subnets 
}
variable "availability_zones" {
    type = list
    default = ["us-east-2a" , "us-east-2b"]   #defining AZs for Subnets
}
