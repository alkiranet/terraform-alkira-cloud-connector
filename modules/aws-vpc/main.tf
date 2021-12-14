# Get effective account ID
data "aws_caller_identity" "current" {}

# Get current region configured with provider
data "aws_region" "current" {}

# Get VPC ID
data "aws_vpc" "selected" {

  filter {
    name   = "tag:Name"
    values = [var.aws_vpc]
  }

}

# Return subnet list IDs
data "aws_subnet_ids" "selected" {

  vpc_id = data.aws_vpc.selected.id

  # TF data sources fail on empty results; filter inside dynamic block
  dynamic "filter" {

    for_each = {
      for subnet in var.onboard_subnets : subnet => subnet
      if var.is_subnet == true
    }

    content {
      name   = "tag:Name"
      values = var.onboard_subnets
    }

  }
}

# Loop through selected IDs
data "aws_subnet" "filtered" {

  for_each = data.aws_subnet_ids.selected.ids
  id       = each.value

}

# Return prefix-list(s)
data "alkira_policy_prefix_list" "prefix" {

  # Count values
  count = length(var.custom_prefixes)

  # Index each prefix-list ID
  name = element(tolist(var.custom_prefixes), count.index)

}

# Connect existing AWS VPC or subnet(s) through Alkira CXP
resource "alkira_connector_aws_vpc" "connector" {

  # AWS values
  name           = var.aws_vpc
  vpc_id         = data.aws_vpc.selected.id
  aws_region     = data.aws_region.current.name
  vpc_cidr       = var.is_subnet ? null : [data.aws_vpc.selected.cidr_block]
  aws_account_id = coalesce(var.account_id, data.aws_caller_identity.current.account_id)

  # CXP values
  cxp             = var.cxp
  size            = var.size
  group           = var.group
  segment_id      = var.segment_id
  billing_tag_ids = [var.billing_tag_id]
  credential_id   = var.credential_id

  # If onboarding specific subnets
  dynamic "vpc_subnet" {
    for_each = {
      for subnet in data.aws_subnet.filtered : subnet.id => subnet
      if var.is_subnet == true
    }

    content {
      id   = vpc_subnet.value.id
      cidr = vpc_subnet.value.cidr_block
    }
  }

  # Route table configuration
  dynamic "vpc_route_table" {
    for_each = data.alkira_policy_prefix_list.prefix

    # Does custom bool exist? If not, default
    content {
      id              = data.aws_vpc.selected.main_route_table_id
      options         = var.is_custom ? "ADVERTISE_CUSTOM_PREFIX" : "ADVERTISE_DEFAULT_ROUTE"
      prefix_list_ids = try([vpc_route_table.value.id])
    }
  }

}