output "cxp" {
  description = "OCI Connector CXP"
  value       = alkira_connector_oci_vcn.connector.cxp
}

output "size" {
  description = "OCI Connector size"
  value       = alkira_connector_oci_vcn.connector.size
}

output "segment_id" {
  description = "OCI Connector segment"
  value       = alkira_connector_oci_vcn.connector.segment_id
}

output "group" {
  description = "OCI Connector group"
  value       = alkira_connector_oci_vcn.connector.group
}

output "billing_tag_id" {
  description = "OCI Connector billing tag"
  value       = alkira_connector_oci_vcn.connector.billing_tag_ids
}