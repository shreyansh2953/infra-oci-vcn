variable "compartment_id" {
    type = string
    description = "compartment_id"
  
}

variable "vcn_cidr_blocks" {
  type = list(string)
}

variable "vcn_name" {
  type = string
}

variable "dns_label" {
  type = string
}

variable "subnet_cidrs" {
  type = list(string)
}

variable "subnet_display_name" {
  type = list(string)
}

variable "isAdSpecific" {
   type = list(bool)
}

variable "isIGW" {
   type = bool
}

variable "isNAT" {
   type = bool
}

variable "isSubnetPrivate" {
   type = list(bool)
}

variable "internet_gateway_display_name" {
  type = string
}

variable "region" {
    type = string
  
}

variable "freeform_tags" {
  type    = map(string)
  default = {
    Department = "Networking"
    Env        = "test"
  }
}