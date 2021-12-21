output "connector_id" {
  description = "GCP Connector ID"
  value       = alkira_connector_gcp_vpc.connector.id
}

output "cxp" {
  description = "GCP Connector CXP"
  value       = alkira_connector_gcp_vpc.connector.cxp
}

output "size" {
  description = "GCP Connector size"
  value       = alkira_connector_gcp_vpc.connector.size
}

output "segment_id" {
  description = "GCP Connector segment"
  value       = alkira_connector_gcp_vpc.connector.segment_id
}

output "group" {
  description = "GCP Connector group"
  value       = alkira_connector_gcp_vpc.connector.group
}

output "billing_tag_id" {
  description = "GCP Connector billing tag"
  value       = alkira_connector_gcp_vpc.connector.billing_tag_ids
}