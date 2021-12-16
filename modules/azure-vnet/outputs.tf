output "connector_id" {
  description = "Azure Connector ID"
  value       = alkira_connector_azure_vnet.connector.id
}

output "cxp" {
  description = "Azure Connector CXP"
  value       = alkira_connector_azure_vnet.connector.cxp
}

output "size" {
  description = "Azure Connector size"
  value       = alkira_connector_azure_vnet.connector.size
}

output "segment_id" {
  description = "Azure Connector segment"
  value       = alkira_connector_azure_vnet.connector.segment_id
}

output "group" {
  description = "Azure Connector group"
  value       = alkira_connector_azure_vnet.connector.group
}

output "billing_tag_id" {
  description = "Azure Connector billing tag"
  value       = alkira_connector_azure_vnet.connector.billing_tag_ids
}