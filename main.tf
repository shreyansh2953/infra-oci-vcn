terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "6.4.0"
    }
  }
}


provider "oci" {

   region = var.region
}

module "oci_vcn" {
  source = "git::https://github.com/shreyansh2953/terraform-oci-vcn.git?ref=master"
  
  compartment_id = var.compartment_id
  vcn_cidr_blocks = var.vcn_cidr_blocks
  dns_label = var.dns_label
  vcn_name = var.vcn_name
  defined_tags = {"pcs_tags.environment" = "orm"}
  freeform_tags = var.freeform_tags
  subnet_cidrs = var.subnet_cidrs
  subnet_display_name = var.subnet_display_name
  isAdSpecific = var.isAdSpecific
  isSubnetPrivate = var.isSubnetPrivate
  isIGW = var.isIGW
  isNAT = var.isNAT
  internet_gateway_display_name = var.internet_gateway_display_name
}



