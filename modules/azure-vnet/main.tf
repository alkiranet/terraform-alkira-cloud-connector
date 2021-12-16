# Return VNet attributes required for connector
data "azurerm_virtual_network" "azure_vnet" {
  name                = var.azure_vnet
  resource_group_name = var.resource_group
}

# Return prefix-list(s)
data "alkira_policy_prefix_list" "prefix" {

  # Count values
  count = length(var.custom_prefixes)

  # Index each prefix-list ID
  name = element(tolist(var.custom_prefixes), count.index)

}

# Connect VNet through Alkira CXP
resource "alkira_connector_azure_vnet" "connector" {

  # Azure values
  name          = var.azure_vnet
  azure_vnet_id = data.azurerm_virtual_network.azure_vnet.id
  azure_region  = data.azurerm_virtual_network.azure_vnet.location

  # CXP values
  cxp             = var.cxp
  size            = var.size
  group           = var.group
  segment_id      = var.segment_id
  billing_tag_ids = [var.billing_tag_id]
  credential_id   = var.credential_id

  /*
  Does custom bool exist?
  If yes, advertise custom prefix and pass through list
  If not, use default route and set option to route custom to null
  */

  # Route table
  routing_options = var.is_custom ? "ADVERTISE_CUSTOM_PREFIX" : "ADVERTISE_DEFAULT_ROUTE"

  # Custom prefixes
  routing_prefix_list_ids = var.is_custom ? data.alkira_policy_prefix_list.prefix.*.id : null

}