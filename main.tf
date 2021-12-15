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