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

variable "instance_type" {
  description = "(Required) AWS instance_type to execute deployment to"
  default     = "m5.large"
  type        = string  
}

variable "ami" {
  description = "(Required) The AMI id for the underlying OS"
  default     = "ami-092b43193629811af"
  type        = string
}

variable "key_name" {
  description = "(Optional) The key pair name for the instances. If not provided - you can use SSM session manager for console access"
  default     = "sap-us-east-2"
  type        = string
}
variable "user_data" {
  description = "(Optional) The user data script for the instance. If none provisioned - default one will be used to install AWS CLI and SSM agent"
  default     = ""
}
