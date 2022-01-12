data "oci_core_vcns" "selected" {
  compartment_id = var.compartment_id
  display_name   = var.oci_vcn
}

# Return prefix-list(s)
data "alkira_policy_prefix_list" "prefix" {

  # Count values
  count = length(var.custom_prefixes)

  # Index each prefix-list ID
  name = element(tolist(var.custom_prefixes), count.index)

}

resource "alkira_connector_oci_vcn" "connector" {

  # OCI values
  name            = var.oci_vcn
  enabled         = var.is_enabled
  primary         = var.is_primary
  oci_region      = var.cloud_region
  vcn_id          = one(data.oci_core_vcns.selected.virtual_networks[*].id)
  vcn_cidr        = [one(data.oci_core_vcns.selected.virtual_networks[*].cidr_block)]

  # Alkira values
  cxp             = var.cxp
  size            = var.size
  group           = var.group
  segment_id      = var.segment_id
  billing_tag_ids = [var.billing_tag_id]
  credential_id   = var.credential_id

  # Route table configuration
  dynamic "vcn_route_table" {
    for_each = data.alkira_policy_prefix_list.prefix

    # Does custom bool exist? If not, default
    content {
      id              = one(data.oci_core_vcns.selected.virtual_networks[*].default_route_table_id)
      options         = var.is_custom ? "ADVERTISE_CUSTOM_PREFIX" : "ADVERTISE_DEFAULT_ROUTE"
      prefix_list_ids = try([vcn_route_table.value.id])
    }

  }
}