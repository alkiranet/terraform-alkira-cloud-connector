output "connector_id" {
  description = "AWS Connector ID"
  value       = alkira_connector_aws_vpc.connector.id
}

output "cxp" {
  description = "AWS Connector CXP"
  value       = alkira_connector_aws_vpc.connector.cxp
}

output "size" {
  description = "AWS Connector size"
  value       = alkira_connector_aws_vpc.connector.size
}

output "segment_id" {
  description = "AWS Connector segment"
  value       = alkira_connector_aws_vpc.connector.segment_id
}

output "group" {
  description = "AWS Connector group"
  value       = alkira_connector_aws_vpc.connector.group
}

output "billing_tag_id" {
  description = "AWS Connector billing tag"
  value       = alkira_connector_aws_vpc.connector.billing_tag_ids
}