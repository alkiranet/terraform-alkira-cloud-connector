/*
Required data sources
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs
*/

data "alkira_credential" "credential" {
  name = var.credential
}

data "alkira_segment" "segment" {
  name = var.segment
}

data "alkira_group" "group" {
  name = var.group
}

data "alkira_billing_tag" "tag" {
  name = var.billing_tag
}

/*
Onboard AWS VPC to Alkira CXP
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_aws_vpc
*/
module "onboard_aws_vpc" {
  source = "./modules/aws-vpc"

  # If value exists, set true
  count = length(var.aws_vpc) > 0 ? 1 : 0

  # Some conditions
  is_subnet = length(var.onboard_subnets) > 0 ? true : false
  is_custom = length(var.custom_prefixes) > 0 ? true : false

  # AWS values
  aws_vpc = var.aws_vpc

  # Alkira values
  cxp             = var.cxp
  size            = var.size
  onboard_subnets = var.onboard_subnets
  custom_prefixes = var.custom_prefixes
  group           = data.alkira_group.group.name
  segment_id      = data.alkira_segment.segment.id
  billing_tag_id  = data.alkira_billing_tag.tag.id
  credential_id   = data.alkira_credential.credential.id

}

/*
Onboard Azure VNet to Alkira CXP
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_azure_vnet
*/
module "onboard_azure_vnet" {
  source = "./modules/azure-vnet"

  # If value exists, set true
  count = length(var.azure_vnet) > 0 ? 1 : 0

  # Some conditions
  is_sub    = length(var.subscription_id) > 0 ? true : false
  is_custom = length(var.custom_prefixes) > 0 ? true : false

  # Azure values
  azure_vnet     = var.azure_vnet
  resource_group = var.resource_group

  # Alkira values
  cxp             = var.cxp
  size            = var.size
  subscription_id = var.subscription_id
  custom_prefixes = var.custom_prefixes
  group           = data.alkira_group.group.name
  segment_id      = data.alkira_segment.segment.id
  billing_tag_id  = data.alkira_billing_tag.tag.id
  credential_id   = data.alkira_credential.credential.id

}

/*
Onboard GCP VPC to Alkira CXP
https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_gcp_vpc
*/
module "onboard_gcp_vpc" {
  source = "./modules/gcp-vpc"

  # If value exists, set true
  count = length(var.gcp_vpc) > 0 ? 1 : 0

  # GCP values
  gcp_vpc      = var.gcp_vpc
  project      = var.project
  cloud_region = var.cloud_region

  # Alkira values
  cxp            = var.cxp
  size           = var.size
  group          = data.alkira_group.group.name
  segment_id     = data.alkira_segment.segment.id
  billing_tag_id = data.alkira_billing_tag.tag.id
  credential_id  = data.alkira_credential.credential.id

}

module "onboard_oci_vcn" {
  source = "./modules/oci-vcn"

  # If value exists, set true
  count = length(var.oci_vcn) > 0 ? 1 : 0

  # OCI values
  oci_vcn        = var.oci_vcn
  compartment_id = var.compartment_id
  cloud_region   = var.cloud_region
  is_custom      = length(var.custom_prefixes) > 0 ? true : false

  # Alkira values
  cxp             = var.cxp
  size            = var.size
  custom_prefixes = var.custom_prefixes
  group           = data.alkira_group.group.name
  segment_id      = data.alkira_segment.segment.id
  billing_tag_id  = data.alkira_billing_tag.tag.id
  credential_id   = data.alkira_credential.credential.id

}